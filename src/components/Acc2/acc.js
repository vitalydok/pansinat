/* START Аккордион */
(function() {
    const items = document.querySelectorAll(".acc__header")
    if (items.length) {
        const removeActive = () => {
            const items = document.body.querySelectorAll(".acc")
            for (const item of items) {
                item.classList.remove("is-active")
                item.querySelector(".acc__description").style.maxHeight = 0
            }
            return true
        }
        for (const item of items) {
            item.addEventListener("click", function() {
                const item = this.parentNode,
                    panel = this.nextElementSibling
                if (item.classList.contains("is-active")) {
                    removeActive()
                } else {
                    removeActive()
                    item.classList.toggle("is-active")
                    panel.style.maxHeight = `fit-content`
                }
            })
        }
    }
})();