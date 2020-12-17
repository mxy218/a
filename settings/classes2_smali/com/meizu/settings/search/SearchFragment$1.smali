.class Lcom/meizu/settings/search/SearchFragment$1;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/search/SearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 193
    iput-object p1, p0, Lcom/meizu/settings/search/SearchFragment$1;->this$0:Lcom/meizu/settings/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 196
    iget-object p0, p0, Lcom/meizu/settings/search/SearchFragment$1;->this$0:Lcom/meizu/settings/search/SearchFragment;

    iget-object p0, p0, Lcom/meizu/settings/search/SearchFragment;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    invoke-virtual {p0}, Lcom/meizu/settings/widget/SearchView;->stopVoiceInput()V

    const/4 p0, 0x0

    return p0
.end method
