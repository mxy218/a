.class Lcom/meizu/settings/widget/EditTextWithCheckBoxView$3;
.super Ljava/lang/Object;
.source "EditTextWithCheckBoxView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->initCheckBox(Landroid/view/View;)V
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

    .line 106
    iput-object p1, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$3;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 110
    iget-object p0, p0, Lcom/meizu/settings/widget/EditTextWithCheckBoxView$3;->this$0:Lcom/meizu/settings/widget/EditTextWithCheckBoxView;

    invoke-static {p0}, Lcom/meizu/settings/widget/EditTextWithCheckBoxView;->access$100(Lcom/meizu/settings/widget/EditTextWithCheckBoxView;)V

    return-void
.end method
