.class Landroidx/appcompat/widget/SearchView$5;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .registers 2

    .line 976
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 979
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_a

    .line 980
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->onSearchClicked()V

    goto :goto_29

    .line 981
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_12

    .line 982
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->onCloseClicked()V

    goto :goto_29

    .line 983
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1a

    .line 984
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->onSubmitQuery()V

    goto :goto_29

    .line 985
    :cond_1a
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_22

    .line 986
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->onVoiceClicked()V

    goto :goto_29

    .line 987
    :cond_22
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    if-ne p1, v0, :cond_29

    .line 988
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->forceSuggestionQuery()V

    :cond_29
    :goto_29
    return-void
.end method
