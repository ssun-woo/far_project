
<style>
    @import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);

    .starEx {
        display: inline-block;
        border: 0;
        margin-right: 15px;
    }

    .starEx>input {
        display: none;
    }

    .starEx>label {
        float: right;
        color: #ddd
    }

    .starEx>label:before {
        display: inline-block;
        font-size: 1rem;
        padding: .3rem .2rem;
        margin: 0;
        cursor: pointer;
        font-family: FontAwesome;
        content: "\f005 ";
    }

    .starEx .half:before {
        content: "\f089 ";
        position: absolute;
        padding-right: 0;
    }

    .starEx input:checked~label,
    .starEx label:hover,
    .starEx label:hover~label {
        color: #f7ea32 !important;
    }

    .starEx input:checked+.starEx label:hover,
    .starEx input input:checked~label:hover,
    .starEx input:checked~.starEx label:hover~label,
    .starEx label:hover~input:checked~label {
        color: #f7ea32 !important;
    }
</style>

<body>
	<fieldset class="starEx">
        <input type="radio" id="rating10" name="rating" value="10"><label for="rating10" title="5점"></label>
        <input type="radio" id="rating9" name="rating" value="9"><label class="half" for="rating9" title="4.5점"></label>
        <input type="radio" id="rating8" name="rating" value="8"><label for="rating8" title="4점"></label>
        <input type="radio" id="rating7" name="rating" value="7"><label class="half" for="rating7" title="3.5점"></label>
        <input type="radio" id="rating6" name="rating" value="6"><label for="rating6" title="3점"></label>
        <input type="radio" id="rating5" name="rating" value="5"><label class="half" for="rating5" title="2.5점"></label>
        <input type="radio" id="rating4" name="rating" value="4"><label for="rating4" title="2점"></label>
        <input type="radio" id="rating3" name="rating" value="3"><label class="half" for="rating3" title="1.5점"></label>
        <input type="radio" id="rating2" name="rating" value="2"><label for="rating2" title="1점"></label>
        <input type="radio" id="rating1" name="rating" value="1"><label class="half" for="rating1" title="0.5점"></label>
    </fieldset>
</body>