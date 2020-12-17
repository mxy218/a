.class Landroid/support/v7/widget/SearchView$5;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .registers 2

    .line 975
    iput-object p1, p0, Landroid/support/v7/widget/SearchView$5;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 978
    iget-object p0, p0, Landroid/support/v7/widget/SearchView$5;->this$0:Landroid/support/v7/widget/SearchView;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_a

    .line 979
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->onSearchClicked()V

    goto :goto_29

    .line 980
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_12

    .line 981
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->onCloseClicked()V

    goto :goto_29

    .line 982
    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1a

    .line 983
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->onSubmitQuery()V

    goto :goto_29

    .line 984
    :cond_1a
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_22

    .line 985
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->onVoiceClicked()V

    goto :goto_29

    .line 986
    :cond_22
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    if-ne p1, v0, :cond_29

    .line 987
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->forceSuggestionQuery()V

    :cond_29
    :goto_29
    return-void
.end method
