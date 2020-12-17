.class public Lcom/meizu/common/widget/AnimCheckBox;
.super Landroid/widget/CheckBox;
.source "AnimCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;,
        Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;
    }
.end annotation


# instance fields
.field private checkBoxHelper:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

.field private mActivated:Z

.field mInitVisible:I

.field private mUpdateListener:Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/AnimCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/AnimCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/AnimCheckBox;->mInitVisible:I

    const/4 p1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AnimCheckBox;->setIsAnimation(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/AnimCheckBox;->mInitVisible:I

    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AnimCheckBox;->setIsAnimation(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/AnimCheckBox;)Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/meizu/common/widget/AnimCheckBox;->mUpdateListener:Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;

    return-object p0
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    .line 307
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 308
    iget-boolean p0, p0, Lcom/meizu/common/widget/AnimCheckBox;->mActivated:Z

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 317
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 319
    iget-boolean p0, p0, Lcom/meizu/common/widget/AnimCheckBox;->mActivated:Z

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method public setActivated(Z)V
    .registers 3

    .line 76
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->mActivated:Z

    if-eq v0, p1, :cond_c

    .line 77
    iput-boolean p1, p0, Lcom/meizu/common/widget/AnimCheckBox;->mActivated:Z

    const v0, 0x8000

    .line 78
    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->sendAccessibilityEvent(I)V

    .line 80
    :cond_c
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->checkBoxHelper:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    if-nez v0, :cond_14

    .line 81
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setActivated(Z)V

    goto :goto_17

    .line 83
    :cond_14
    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->setActivated(Z)V

    :goto_17
    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->checkBoxHelper:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    if-nez v0, :cond_8

    .line 68
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_b

    .line 70
    :cond_8
    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->setChecked(Z)V

    :goto_b
    return-void
.end method

.method public setInitVisible(I)V
    .registers 3

    if-eqz p1, :cond_9

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9

    const/16 v0, 0x8

    if-ne p1, v0, :cond_b

    .line 61
    :cond_9
    iput p1, p0, Lcom/meizu/common/widget/AnimCheckBox;->mInitVisible:I

    :cond_b
    return-void
.end method

.method public setIsAnimation(Z)V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->checkBoxHelper:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    if-nez v0, :cond_b

    .line 93
    new-instance v0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;-><init>(Lcom/meizu/common/widget/AnimCheckBox;)V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox;->checkBoxHelper:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    .line 95
    :cond_b
    iget-object p0, p0, Lcom/meizu/common/widget/AnimCheckBox;->checkBoxHelper:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->setIsAnimation(Z)V

    return-void
.end method

.method public setUpdateListner(Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/meizu/common/widget/AnimCheckBox;->mUpdateListener:Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;

    return-void
.end method

.method public superSetActivate(Z)V
    .registers 2

    .line 111
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setActivated(Z)V

    return-void
.end method

.method public superSetCheck(Z)V
    .registers 2

    .line 103
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
