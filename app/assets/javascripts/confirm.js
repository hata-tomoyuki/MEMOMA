$(function() {
  $(".fas.fa-trash").click(function() {
    if(confirm('本当に削除しますか？')) {
      return true;
    } else {
      return false;
    }
  })
})