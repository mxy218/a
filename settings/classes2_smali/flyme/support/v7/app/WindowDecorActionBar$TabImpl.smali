.class public Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;
.super Lflyme/support/v7/app/ActionBar$Tab;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Lflyme/support/v7/app/ActionBar$TabListener;

.field private mCallbackSDK:Lflyme/support/v7/app/ActionBar$TabListenerSDK;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsEnabled:Z

.field private mMinWidth:I

.field private mPaddingEnd:I

.field private mPaddingStart:I

.field private mPosition:I

.field private mText:Ljava/lang/CharSequence;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field final synthetic this$0:Lflyme/support/v7/app/WindowDecorActionBar;


# virtual methods
.method public getCallback()Lflyme/support/v7/app/ActionBar$TabListener;
    .registers 1

    .line 1430
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->mCallback:Lflyme/support/v7/app/ActionBar$TabListener;

    return-object p0
.end method

.method public getCallbackSDK()Lflyme/support/v7/app/ActionBar$TabListenerSDK;
    .registers 1

    .line 1560
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->mCallbackSDK:Lflyme/support/v7/app/ActionBar$TabListenerSDK;

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 1

    .line 1549
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getCustomView()Landroid/view/View;
    .registers 1

    .line 1441
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1461
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getMinWidth()I
    .registers 1

    .line 1613
    iget p0, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->mMinWidth:I

    return p0
.end method

.method public getPaddingEnd()I
    .registers 1

    .line 1597
    iget p0, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->mPaddingEnd:I

    return p0
.end method

.method public getPaddingStart()I
    .registers 1

    .line 1592
    iget p0, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->mPaddingStart:I

    return p0
.end method

.method public getPosition()I
    .registers 1

    .line 1466
    iget p0, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 1

    .line 1475
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTextColor()Landroid/content/res/ColorStateList;
    .registers 1

    .line 1480
    iget-object p0, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 1576
    iget-boolean p0, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->mIsEnabled:Z

    return p0
.end method

.method public select()V
    .registers 2

    const/4 v0, 0x0

    .line 1525
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->select(Z)V

    return-void
.end method

.method public select(Z)V
    .registers 3

    .line 1530
    iget-object v0, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->this$0:Lflyme/support/v7/app/WindowDecorActionBar;

    invoke-virtual {v0, p0, p1}, Lflyme/support/v7/app/WindowDecorActionBar;->selectTab(Lflyme/support/v7/app/ActionBar$Tab;Z)V

    return-void
.end method

.method public setMinWidth(I)V
    .registers 3

    .line 1602
    iget v0, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->mMinWidth:I

    if-eq v0, p1, :cond_15

    .line 1603
    iput p1, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->mMinWidth:I

    .line 1604
    iget p1, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz p1, :cond_15

    .line 1605
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->this$0:Lflyme/support/v7/app/WindowDecorActionBar;

    invoke-static {p1}, Lflyme/support/v7/app/WindowDecorActionBar;->access$1300(Lflyme/support/v7/app/WindowDecorActionBar;)Lflyme/support/v7/widget/ScrollingTabContainerView;

    move-result-object p1

    iget p0, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_15
    return-void
.end method

.method public setPadding(II)V
    .registers 4

    .line 1581
    iget v0, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->mPaddingStart:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->mPaddingEnd:I

    if-eq v0, p2, :cond_1b

    .line 1582
    :cond_8
    iput p1, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->mPaddingStart:I

    .line 1583
    iput p2, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->mPaddingEnd:I

    .line 1584
    iget p1, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz p1, :cond_1b

    .line 1585
    iget-object p1, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->this$0:Lflyme/support/v7/app/WindowDecorActionBar;

    invoke-static {p1}, Lflyme/support/v7/app/WindowDecorActionBar;->access$1300(Lflyme/support/v7/app/WindowDecorActionBar;)Lflyme/support/v7/widget/ScrollingTabContainerView;

    move-result-object p1

    iget p0, p0, Lflyme/support/v7/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_1b
    return-void
.end method
