.class Lcom/meizu/settings/search/SearchFragment$3;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/search/SearchFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/search/SearchFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/search/SearchFragment;)V
    .registers 2

    .line 531
    iput-object p1, p0, Lcom/meizu/settings/search/SearchFragment$3;->this$0:Lcom/meizu/settings/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 535
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_16

    .line 536
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment$3;->this$0:Lcom/meizu/settings/search/SearchFragment;

    iget-object p1, p1, Lcom/meizu/settings/search/SearchFragment;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    if-eqz p1, :cond_16

    .line 537
    invoke-virtual {p1}, Lcom/meizu/settings/widget/SearchView;->hideSoftKeyboard()V

    .line 538
    iget-object p0, p0, Lcom/meizu/settings/search/SearchFragment$3;->this$0:Lcom/meizu/settings/search/SearchFragment;

    iget-object p0, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    invoke-virtual {p0}, Lcom/meizu/settings/widget/SearchView;->stopVoiceInput()V

    :cond_16
    const/4 p0, 0x0

    return p0
.end method
