.class Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "EnhanceGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpinnerItemAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceGallery;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;)V
    .registers 2

    .line 2945
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    .line 2949
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2950
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 2951
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {p0, p1, v0, p2}, Lcom/meizu/common/widget/EnhanceGallery;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 4

    .line 2956
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
