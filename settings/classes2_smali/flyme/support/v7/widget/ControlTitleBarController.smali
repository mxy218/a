.class public Lflyme/support/v7/widget/ControlTitleBarController;
.super Ljava/lang/Object;
.source "ControlTitleBarController.java"


# instance fields
.field private mControlTitleBar:Lflyme/support/v7/widget/ControlTitleBar;

.field private mNegativeButtonData:Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;

.field private mNegativeClickListener:Landroid/view/View$OnClickListener;

.field private mPositiveButtonData:Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;

.field private mPositiveClickListener:Landroid/view/View$OnClickListener;

.field private mPreventDispatchingItemsChanged:Z

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mPreventDispatchingItemsChanged:Z

    return-void
.end method


# virtual methods
.method public bindButton(ILflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;Landroid/view/View$OnClickListener;)V
    .registers 5

    .line 34
    invoke-virtual {p2, p0}, Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;->setControlTitleBarController(Lflyme/support/v7/widget/ControlTitleBarController;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 36
    iput-object p2, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mPositiveButtonData:Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;

    .line 37
    iput-object p3, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mPositiveClickListener:Landroid/view/View$OnClickListener;

    goto :goto_f

    .line 39
    :cond_b
    iput-object p2, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mNegativeButtonData:Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;

    .line 40
    iput-object p3, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mNegativeClickListener:Landroid/view/View$OnClickListener;

    :goto_f
    return-void
.end method

.method public getControlTitleBar(Landroid/content/Context;)Lflyme/support/v7/widget/ControlTitleBar;
    .registers 3

    .line 26
    iget-object v0, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mControlTitleBar:Lflyme/support/v7/widget/ControlTitleBar;

    if-nez v0, :cond_b

    .line 27
    new-instance v0, Lflyme/support/v7/widget/ControlTitleBar;

    invoke-direct {v0, p1}, Lflyme/support/v7/widget/ControlTitleBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mControlTitleBar:Lflyme/support/v7/widget/ControlTitleBar;

    .line 29
    :cond_b
    iget-object p0, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mControlTitleBar:Lflyme/support/v7/widget/ControlTitleBar;

    return-object p0
.end method

.method public onItemDataChanged()V
    .registers 10

    .line 45
    iget-boolean v0, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_b7

    .line 46
    iget-object v0, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mControlTitleBar:Lflyme/support/v7/widget/ControlTitleBar;

    iget-object v1, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/ControlTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mPositiveButtonData:Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    .line 52
    invoke-virtual {v0}, Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;->getId()I

    move-result v0

    .line 53
    iget-object v3, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mPositiveButtonData:Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;

    invoke-virtual {v3}, Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 54
    iget-object v4, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mPositiveButtonData:Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;

    invoke-virtual {v4}, Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_25

    :cond_22
    move v0, v1

    move-object v3, v2

    move-object v4, v3

    .line 57
    :goto_25
    iget-object v5, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mNegativeButtonData:Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;

    if-eqz v5, :cond_3a

    .line 58
    invoke-virtual {v5}, Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;->getId()I

    move-result v1

    .line 59
    iget-object v2, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mNegativeButtonData:Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;

    invoke-virtual {v2}, Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 60
    iget-object v5, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mNegativeButtonData:Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;

    invoke-virtual {v5}, Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_3b

    :cond_3a
    move-object v5, v2

    .line 63
    :goto_3b
    iget-object v6, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mControlTitleBar:Lflyme/support/v7/widget/ControlTitleBar;

    iget-object v7, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mNegativeClickListener:Landroid/view/View$OnClickListener;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v2, v5, v7}, Lflyme/support/v7/widget/ControlTitleBar;->setButton(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v2, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mControlTitleBar:Lflyme/support/v7/widget/ControlTitleBar;

    const/4 v5, 0x1

    iget-object v6, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mPositiveClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5, v3, v4, v6}, Lflyme/support/v7/widget/ControlTitleBar;->setButton(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v2, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mControlTitleBar:Lflyme/support/v7/widget/ControlTitleBar;

    invoke-virtual {v2}, Lflyme/support/v7/widget/ControlTitleBar;->getPositiveItemView()Landroid/view/View;

    move-result-object v2

    .line 69
    iget-object v3, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mPositiveButtonData:Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;

    invoke-virtual {v3}, Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 70
    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 71
    iget-object v0, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mPositiveButtonData:Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;->isVisible()Z

    move-result v0

    const/16 v3, 0x8

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mPositiveButtonData:Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_7b

    iget-object v0, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mPositiveButtonData:Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;

    .line 72
    invoke-virtual {v0}, Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 73
    :cond_7b
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_82

    .line 75
    :cond_7f
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :goto_82
    iget-object v0, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mControlTitleBar:Lflyme/support/v7/widget/ControlTitleBar;

    invoke-virtual {v0}, Lflyme/support/v7/widget/ControlTitleBar;->getNegativeItemView()Landroid/view/View;

    move-result-object v0

    .line 79
    iget-object v2, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mNegativeButtonData:Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;

    invoke-virtual {v2}, Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 81
    iget-object v1, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mNegativeButtonData:Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;

    invoke-virtual {v1}, Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_b4

    iget-object v1, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mNegativeButtonData:Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;

    invoke-virtual {v1}, Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_b0

    iget-object p0, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mNegativeButtonData:Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;

    .line 82
    invoke-virtual {p0}, Lflyme/support/v7/widget/ToolbarWidgetWrapper$ControlButtonImpl;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_b4

    .line 83
    :cond_b0
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b7

    .line 85
    :cond_b4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_b7
    :goto_b7
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mTitle:Ljava/lang/CharSequence;

    .line 121
    iget-object p1, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mControlTitleBar:Lflyme/support/v7/widget/ControlTitleBar;

    if-eqz p1, :cond_b

    .line 122
    iget-object p0, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/ControlTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public startDispatchingItemsChanged()V
    .registers 2

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mPreventDispatchingItemsChanged:Z

    .line 116
    invoke-virtual {p0}, Lflyme/support/v7/widget/ControlTitleBarController;->onItemDataChanged()V

    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .registers 2

    .line 107
    iget-boolean v0, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lflyme/support/v7/widget/ControlTitleBarController;->mPreventDispatchingItemsChanged:Z

    :cond_7
    return-void
.end method
