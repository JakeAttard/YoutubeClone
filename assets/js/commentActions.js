function postComment(button, postedBy, videoId, replyTo, containerClass) {
    var textarea = $(button).siblings("textarea");
    var commentText = textarea.val();
    textarea.val("");

    if(commentText) {
        $.post("ajax/postComment.php", { commentText: commentText, postedBy: postedBy, videoId: videoId, responseTo: replyTo }).done(function(comment) {
            $("." + containerClass).prepend(comment);
        });
    } else {
        alert("You can't post an empty comment");
    }
}

function toggleReply(button) {
    var parent = $(button).closest(".itemContainer");
    var commentForm = parent.find(".commentForm").first();

    commentForm.toggleClass("hidden");
}