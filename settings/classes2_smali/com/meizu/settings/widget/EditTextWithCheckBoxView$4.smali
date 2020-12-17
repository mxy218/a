.class Lcom/meizu/settings/widget/EditTextWithCheckBoxView$4;
.super Ljava/lang/Object;
.source "EditTextWithCheckBoxView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->initDelImg(Landroid/view/View;)V
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

    .line 162
    iput-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$4;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 166
    iget-object p0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$4;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    invoke-static {p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->access$300(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)Landroid/widget/EditText;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
