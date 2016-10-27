<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:template>
    <jsp:attribute name="javascript">
        <script src="/assets/js/payment.js"></script>
    </jsp:attribute>
    <jsp:body>
        <input id="input-food-meeting-id" hidden="true" value="${id_food_meeting}" type="text"/>
        <div class="row">
            Rodri's block
        </div>
        <div class="row">
            <form id="formAddItemId" class="row col s12">
                <div class="row"style="display:${estate}">
                    <div class="input-field col s4">
                        <i class="material-icons prefix">library_add</i>
                        <input id="input-item-name-id" type="text" name="item_name" class="validate">
                        <label for="input-item-name-id">item name</label>
                    </div>
                    <div class="input-field col s4">
                        <i class="material-icons prefix">comment</i>
                        <input id="input-item-description-id" type="text" name="item_description" class="validate">
                        <label for="input-item-description-id">description</label>
                    </div>
                    <div class="input-field col s2">
                        <i class="material-icons prefix">payment</i>
                        <input id="input-item-price-id" type="number" name="item_price" class="validate">
                        <label for="input-item-price-id">price</label>
                    </div>
                    <div class="col s2">
                        <button id="addItemId" class="btn waves-effect waves-light" type="submit">ADD
                            <i class="material-icons right">add</i>
                        </button>

                    </div>
                </div>
            </form>
            <div class="row">
                <table id="items_id">
                    <thead>
                        <tr>
                            <th data-field="id">Item Name</th>
                            <th data-field="name">Description</th>
                            <th data-field="price">Item Price</th>
                            <th></th>
                        </tr>
                    </thead>

                    <tbody>
                        <c:forEach var="item" items="#{items}">
                        <label hidden="true">${item.id}</label>
                        <tr id="${item.id}">
                            <td>${item.name}</td>
                            <td>${item.description}</td>
                            <td>${item.price}</td>
                            <td>
                                <a class="btn-floating btn-small waves-effect waves-light red delete-item" style="display:${estate}"><i class="material-icons">delete</i></a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <h5 id="total_items_price_id" class="right-align">${total_item_price}</h5>
            </div>
            <div class="row">
                <ul class="collection">
                    <li class="collection-header"><h4>Extra Items</h4></li>
                    <li class="collection-item avatar">
                        <i class="material-icons circle green">shopping_basket</i>
                        <span class="title">taxi</span>
                        <p>12.5</p>
                        <a class="secondary-content"><i class="material-icons">delete</i></a>
                    </li>
                    <li class="collection-item avatar">
                        <i class="material-icons circle green">shopping_basket</i>
                        <span class="title">coca-cola</span>
                        <p>10.5</p>
                        <a class="secondary-content"><i class="material-icons">delete</i></a>
                    </li>
                    <li class="collection-item avatar">
                        <i class="material-icons circle green">shopping_basket</i>
                        <span class="title">vasos</span>
                        <p>5.0</p>
                        <a class="secondary-content"><i class="material-icons">delete</i></a>
                    </li>
                </ul>
            </div>
        </div>
    </jsp:body>
</t:template>