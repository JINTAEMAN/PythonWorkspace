<template>
  <div>
    <h1>This is Homepage</h1>
    <p>{{ name }}</p> <!--// 이름 ■//-->
      <tamaCmp/>  <!--/ component ■ -->
  </div>
</template>

<script>
// @ is an alias to /src
 import tamaCmp from '@/components/tamaCmp.vue';  // component 호출 ■

export default {
  components: {
    tamaCmp    // component 명 ■
  },

  data()  {
    return {
      name: '태마리오'
    }
  }
}
</script>

<style scoped>
h1{
  color: red
}
</style>

