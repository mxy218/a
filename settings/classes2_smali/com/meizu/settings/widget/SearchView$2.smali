.class Lcom/meizu/settings/widget/SearchView$2;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/SearchView;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/meizu/settings/widget/SearchView$2;->this$0:Lcom/meizu/settings/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputShownChanged(Z)V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/meizu/settings/widget/SearchView$2;->this$0:Lcom/meizu/settings/widget/SearchView;

    invoke-static {v0}, Lcom/meizu/settings/widget/SearchView;->access$400(Lcom/meizu/settings/widget/SearchView;)Lcom/meizu/settings/widget/SearchView$OnInputMethodStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 108
    iget-object p0, p0, Lcom/meizu/settings/widget/SearchView$2;->this$0:Lcom/meizu/settings/widget/SearchView;

    invoke-static {p0}, Lcom/meizu/settings/widget/SearchView;->access$400(Lcom/meizu/settings/widget/SearchView;)Lcom/meizu/settings/widget/SearchView$OnInputMethodStateChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/meizu/settings/widget/SearchView$OnInputMethodStateChangeListener;->onInputShownChanged(Z)V

    :cond_11
    return-void
.end method
