.class Lcom/meizu/textinputlayout/TextInputLayout$TextInputAccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/textinputlayout/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextInputAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/textinputlayout/TextInputLayout;


# direct methods
.method private constructor <init>(Lcom/meizu/textinputlayout/TextInputLayout;)V
    .registers 2

    .line 593
    iput-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Lcom/meizu/textinputlayout/TextInputLayout;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/textinputlayout/TextInputLayout;Lcom/meizu/textinputlayout/TextInputLayout$1;)V
    .registers 3

    .line 593
    invoke-direct {p0, p1}, Lcom/meizu/textinputlayout/TextInputLayout$TextInputAccessibilityDelegate;-><init>(Lcom/meizu/textinputlayout/TextInputLayout;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 596
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 597
    const-class p0, Lcom/meizu/textinputlayout/TextInputLayout;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4

    .line 612
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 613
    const-class p1, Lcom/meizu/textinputlayout/TextInputLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 615
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Lcom/meizu/textinputlayout/TextInputLayout;

    invoke-static {p1}, Lcom/meizu/textinputlayout/TextInputLayout;->access$400(Lcom/meizu/textinputlayout/TextInputLayout;)Lcom/meizu/textinputlayout/CollapsingTextHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 616
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 617
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 619
    :cond_1f
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Lcom/meizu/textinputlayout/TextInputLayout;

    invoke-static {p1}, Lcom/meizu/textinputlayout/TextInputLayout;->access$300(Lcom/meizu/textinputlayout/TextInputLayout;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 620
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Lcom/meizu/textinputlayout/TextInputLayout;

    invoke-static {p1}, Lcom/meizu/textinputlayout/TextInputLayout;->access$300(Lcom/meizu/textinputlayout/TextInputLayout;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setLabelFor(Landroid/view/View;)V

    .line 622
    :cond_30
    iget-object p1, p0, Lcom/meizu/textinputlayout/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Lcom/meizu/textinputlayout/TextInputLayout;

    invoke-static {p1}, Lcom/meizu/textinputlayout/TextInputLayout;->access$500(Lcom/meizu/textinputlayout/TextInputLayout;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_43

    iget-object p0, p0, Lcom/meizu/textinputlayout/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Lcom/meizu/textinputlayout/TextInputLayout;

    invoke-static {p0}, Lcom/meizu/textinputlayout/TextInputLayout;->access$500(Lcom/meizu/textinputlayout/TextInputLayout;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_44

    :cond_43
    const/4 p0, 0x0

    .line 623
    :goto_44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_51

    const/4 p1, 0x1

    .line 624
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentInvalid(Z)V

    .line 625
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setError(Ljava/lang/CharSequence;)V

    :cond_51
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 602
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 604
    iget-object p0, p0, Lcom/meizu/textinputlayout/TextInputLayout$TextInputAccessibilityDelegate;->this$0:Lcom/meizu/textinputlayout/TextInputLayout;

    invoke-static {p0}, Lcom/meizu/textinputlayout/TextInputLayout;->access$400(Lcom/meizu/textinputlayout/TextInputLayout;)Lcom/meizu/textinputlayout/CollapsingTextHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/textinputlayout/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .line 605
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 606
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    return-void
.end method
