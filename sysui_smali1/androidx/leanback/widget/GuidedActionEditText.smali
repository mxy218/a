.class public Landroidx/leanback/widget/GuidedActionEditText;
.super Landroid/widget/EditText;
.source "GuidedActionEditText.java"

# interfaces
.implements Landroidx/leanback/widget/ImeKeyMonitor;
.implements Landroidx/leanback/widget/GuidedActionAutofillSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/GuidedActionEditText$NoPaddingDrawable;
    }
.end annotation


# instance fields
.field private mAutofillListener:Landroidx/leanback/widget/GuidedActionAutofillSupport$OnAutofillListener;

.field private mKeyListener:Landroidx/leanback/widget/ImeKeyMonitor$ImeKeyListener;

.field private final mNoPaddingDrawable:Landroid/graphics/drawable/Drawable;

.field private final mSavedBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/GuidedActionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101006e

    .line 77
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/GuidedActionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    invoke-virtual {p0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionEditText;->mSavedBackground:Landroid/graphics/drawable/Drawable;

    .line 83
    new-instance p1, Landroidx/leanback/widget/GuidedActionEditText$NoPaddingDrawable;

    invoke-direct {p1}, Landroidx/leanback/widget/GuidedActionEditText$NoPaddingDrawable;-><init>()V

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionEditText;->mNoPaddingDrawable:Landroid/graphics/drawable/Drawable;

    .line 84
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionEditText;->mNoPaddingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .registers 2

    .line 139
    invoke-super {p0, p1}, Landroid/widget/EditText;->autofill(Landroid/view/autofill/AutofillValue;)V

    .line 140
    iget-object p1, p0, Landroidx/leanback/widget/GuidedActionEditText;->mAutofillListener:Landroidx/leanback/widget/GuidedActionAutofillSupport$OnAutofillListener;

    if-eqz p1, :cond_a

    .line 141
    invoke-interface {p1, p0}, Landroidx/leanback/widget/GuidedActionAutofillSupport$OnAutofillListener;->onAutofill(Landroid/view/View;)V

    :cond_a
    return-void
.end method

.method public getAutofillType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_b

    .line 114
    iget-object p2, p0, Landroidx/leanback/widget/GuidedActionEditText;->mSavedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_10

    .line 116
    :cond_b
    iget-object p2, p0, Landroidx/leanback/widget/GuidedActionEditText;->mNoPaddingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_10
    if-nez p1, :cond_16

    const/4 p1, 0x0

    .line 121
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    :cond_16
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 106
    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 107
    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result p0

    if-eqz p0, :cond_c

    const-class p0, Landroid/widget/EditText;

    goto :goto_e

    :cond_c
    const-class p0, Landroid/widget/TextView;

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 95
    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionEditText;->mKeyListener:Landroidx/leanback/widget/ImeKeyMonitor$ImeKeyListener;

    if-eqz v0, :cond_9

    .line 96
    invoke-interface {v0, p0, p1, p2}, Landroidx/leanback/widget/ImeKeyMonitor$ImeKeyListener;->onKeyPreIme(Landroid/widget/EditText;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_10

    .line 99
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_10
    return v0
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .registers 2

    .line 152
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    .line 151
    invoke-super {p0, p1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method
