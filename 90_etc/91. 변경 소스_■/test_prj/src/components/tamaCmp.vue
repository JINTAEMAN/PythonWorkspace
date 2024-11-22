<template>
    <div>
        <p> {{ name }}</p>
        <button @click="updateName">이름 변경</button>
    </div>
</template>

<script>
export default {
    data() {
        return {
            name: "01. 태마리오",
        }
    },

    methods: {
        updateName() {
            this.name ="02. 진수종";
        }
    }
}
</script>

<style scoped>

</style>