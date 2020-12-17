.class Lcom/meizu/settings/widget/EditTextWithCheckBoxView$7;
.super Ljava/lang/Object;
.source "EditTextWithCheckBoxView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->initEditText(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)V
    .registers 2

    .line 210
    iput-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$7;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 213
    iget-object v0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$7;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    invoke-static {v0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->access$600(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)Lcom/meizu/settings/widget/EditTextWithCheckBoxView$OnViewStatusChangedListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 214
    iget-object p0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$7;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    invoke-static {p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->access$600(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)Lcom/meizu/settings/widget/EditTextWithCheckBoxView$OnViewStatusChangedListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$OnViewStatusChangedListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method
