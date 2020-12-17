.class Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field private final BG_ATTRS:[I

.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Lflyme/support/v7/app/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Lflyme/support/v7/widget/ScrollingTabContainerView;Landroid/content/Context;Lflyme/support/v7/app/ActionBar$Tab;Z)V
    .registers 9

    .line 627
    iput-object p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;

    .line 631
    invoke-static {p1}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$300(Lflyme/support/v7/widget/ScrollingTabContainerView;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget v0, Lflyme/support/v7/appcompat/R$attr;->mzToolBarTabStyle:I

    goto :goto_d

    :cond_b
    sget v0, Lflyme/support/v7/appcompat/R$attr;->actionBarTabStyle:I

    :goto_d
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v2, 0x10100d4

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 618
    iput-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->BG_ATTRS:[I

    .line 633
    iput-object p3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mTab:Lflyme/support/v7/app/ActionBar$Tab;

    .line 639
    iget-object p3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->BG_ATTRS:[I

    .line 640
    invoke-static {p1}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$300(Lflyme/support/v7/widget/ScrollingTabContainerView;)Z

    move-result p1

    if-eqz p1, :cond_29

    sget p1, Lflyme/support/v7/appcompat/R$attr;->mzToolBarTabStyle:I

    goto :goto_2b

    :cond_29
    sget p1, Lflyme/support/v7/appcompat/R$attr;->actionBarTabStyle:I

    .line 639
    :goto_2b
    invoke-static {p2, v1, p3, p1, v3}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p1

    .line 642
    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 643
    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 645
    :cond_3c
    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    if-eqz p4, :cond_47

    const p1, 0x800013

    .line 648
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 651
    :cond_47
    invoke-virtual {p0}, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->update()V

    return-void
.end method


# virtual methods
.method public bindTab(Lflyme/support/v7/app/ActionBar$Tab;)V
    .registers 2

    .line 655
    iput-object p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mTab:Lflyme/support/v7/app/ActionBar$Tab;

    .line 656
    invoke-virtual {p0}, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->update()V

    return-void
.end method

.method public getTab()Lflyme/support/v7/app/ActionBar$Tab;
    .registers 1

    .line 852
    iget-object p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mTab:Lflyme/support/v7/app/ActionBar$Tab;

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    .line 677
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 679
    const-class p0, Lflyme/support/v7/app/ActionBar$Tab;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 684
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 686
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p0, v0, :cond_12

    .line 688
    const-class p0, Lflyme/support/v7/app/ActionBar$Tab;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_12
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 8

    const/4 p1, 0x2

    new-array v0, p1, [I

    .line 834
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 836
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 837
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    .line 838
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    .line 839
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 841
    iget-object p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mTab:Lflyme/support/v7/app/ActionBar$Tab;

    invoke-virtual {p0}, Lflyme/support/v7/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v5, 0x0

    invoke-static {v1, p0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 844
    aget v0, v0, v5

    div-int/2addr v2, p1

    add-int/2addr v0, v2

    div-int/2addr v4, p1

    sub-int/2addr v0, v4

    const/16 p1, 0x31

    invoke-virtual {p0, p1, v0, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 847
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method public onMeasure(II)V
    .registers 4

    .line 694
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 703
    iget-object p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-static {p1}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$400(Lflyme/support/v7/widget/ScrollingTabContainerView;)I

    move-result p1

    if-lez p1, :cond_2e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-static {v0}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$400(Lflyme/support/v7/widget/ScrollingTabContainerView;)I

    move-result v0

    if-ge p1, v0, :cond_2e

    iget-object p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-static {p1}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$500(Lflyme/support/v7/widget/ScrollingTabContainerView;)Z

    move-result p1

    if-nez p1, :cond_2e

    .line 704
    iget-object p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-static {p1}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$400(Lflyme/support/v7/widget/ScrollingTabContainerView;)I

    move-result p1

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    :cond_2e
    return-void
.end method

.method public setSelected(Z)V
    .registers 3

    .line 661
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 662
    :goto_9
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setSelected(Z)V

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    const/4 p1, 0x4

    .line 664
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    :cond_14
    return-void
.end method

.method public update()V
    .registers 13

    .line 709
    iget-object v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mTab:Lflyme/support/v7/app/ActionBar$Tab;

    .line 710
    invoke-virtual {v0}, Lflyme/support/v7/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_42

    .line 712
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eq v6, p0, :cond_1d

    if-eqz v6, :cond_1a

    .line 714
    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 715
    :cond_1a
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 717
    :cond_1d
    iput-object v1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 718
    iget-object v6, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_26

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 719
    :cond_26
    iget-object v6, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v6, :cond_32

    .line 720
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 721
    iget-object v3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 724
    :cond_32
    instance-of v3, v1, Lflyme/support/v7/widget/CustomTabView;

    if-eqz v3, :cond_121

    .line 725
    check-cast v1, Lflyme/support/v7/widget/CustomTabView;

    if-eqz v1, :cond_121

    .line 727
    invoke-interface {v1}, Lflyme/support/v7/widget/CustomTabView;->getTabTextView()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    goto/16 :goto_121

    .line 731
    :cond_42
    iget-object v1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_4b

    .line 732
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 733
    iput-object v5, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 736
    :cond_4b
    invoke-virtual {v0}, Lflyme/support/v7/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 737
    invoke-virtual {v0}, Lflyme/support/v7/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 738
    invoke-virtual {v0}, Lflyme/support/v7/app/ActionBar$Tab;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v7

    const/16 v8, 0x10

    const/4 v9, -0x2

    if-eqz v1, :cond_83

    .line 741
    iget-object v10, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v10, :cond_78

    .line 742
    new-instance v10, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 743
    new-instance v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v11, v9, v9}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 745
    iput v8, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 746
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 747
    invoke-virtual {p0, v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 748
    iput-object v10, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 750
    :cond_78
    iget-object v10, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 751
    iget-object v1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8f

    .line 752
    :cond_83
    iget-object v1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_8f

    .line 753
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 754
    iget-object v1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 757
    :cond_8f
    :goto_8f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_f4

    .line 759
    iget-object v3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v3, :cond_d9

    .line 762
    iget-object v3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-static {v3}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$300(Lflyme/support/v7/widget/ScrollingTabContainerView;)Z

    move-result v3

    if-eqz v3, :cond_a5

    sget v3, Lflyme/support/v7/appcompat/R$attr;->mzToolBarTabTextStyle:I

    goto :goto_a7

    :cond_a5
    sget v3, Lflyme/support/v7/appcompat/R$attr;->actionBarTabTextStyle:I

    .line 764
    :goto_a7
    iget-object v10, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-static {v10}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$600(Lflyme/support/v7/widget/ScrollingTabContainerView;)Z

    move-result v10

    if-eqz v10, :cond_b1

    .line 765
    sget v3, Lflyme/support/v7/appcompat/R$attr;->mzAloneTabContainerTabTextStyle:I

    .line 767
    :cond_b1
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11, v5, v3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 769
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 770
    new-instance v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 772
    iget-object v9, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-static {v9}, Lflyme/support/v7/widget/ScrollingTabContainerView;->access$300(Lflyme/support/v7/widget/ScrollingTabContainerView;)Z

    move-result v9

    if-eqz v9, :cond_cd

    goto :goto_cf

    :cond_cd
    const/16 v8, 0x30

    :goto_cf
    iput v8, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 773
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 774
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 775
    iput-object v10, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 777
    :cond_d9
    iget-object v3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_e5

    .line 781
    iget-object v3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 784
    :cond_e5
    iget-object v3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 786
    iget-object v3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lflyme/support/v7/app/ActionBar$Tab;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_100

    .line 788
    :cond_f4
    iget-object v6, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_100

    .line 789
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 790
    iget-object v3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    :cond_100
    :goto_100
    iget-object v3, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_10b

    .line 794
    invoke-virtual {v0}, Lflyme/support/v7/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_10b
    if-nez v1, :cond_11b

    .line 797
    invoke-virtual {v0}, Lflyme/support/v7/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11b

    .line 798
    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_121

    .line 800
    :cond_11b
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 801
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    .line 805
    :cond_121
    :goto_121
    invoke-virtual {v0}, Lflyme/support/v7/app/ActionBar$Tab;->isEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 807
    invoke-virtual {v0}, Lflyme/support/v7/app/ActionBar$Tab;->getPaddingStart()I

    move-result v1

    .line 808
    invoke-virtual {v0}, Lflyme/support/v7/app/ActionBar$Tab;->getPaddingEnd()I

    move-result v3

    if-ltz v1, :cond_134

    move v4, v2

    goto :goto_138

    .line 813
    :cond_134
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    :goto_138
    if-ltz v3, :cond_13b

    goto :goto_140

    .line 818
    :cond_13b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    move v2, v4

    :goto_140
    if-eqz v2, :cond_14d

    .line 821
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 824
    :cond_14d
    invoke-virtual {v0}, Lflyme/support/v7/app/ActionBar$Tab;->getMinWidth()I

    move-result v0

    if-ltz v0, :cond_156

    .line 826
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 829
    :cond_156
    iget-object p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_15f

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_15f
    return-void
.end method
