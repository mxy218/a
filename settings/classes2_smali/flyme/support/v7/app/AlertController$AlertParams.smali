.class public Lflyme/support/v7/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mGravity:I

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsListItemCenter:Z

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mListItemColor:Landroid/content/res/ColorStateList;

.field public mListItemColors:[Landroid/content/res/ColorStateList;

.field public mMaxHeight:I

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lflyme/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 829
    iput v0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mIconId:I

    .line 831
    iput v0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mIconAttrId:I

    .line 857
    iput-boolean v0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    const/4 v0, -0x1

    .line 861
    iput v0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    const/4 v0, 0x1

    .line 869
    iput-boolean v0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 894
    iput-object p1, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 895
    iput-boolean v0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mCancelable:Z

    const-string v0, "layout_inflater"

    .line 896
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private createListView(Lflyme/support/v7/app/AlertController;)V
    .registers 13

    .line 959
    iget-object v0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p1, Lflyme/support/v7/app/AlertController;->mListLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/app/AlertController$RecycleListView;

    .line 962
    iget-boolean v1, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    const/4 v8, 0x1

    if-eqz v1, :cond_33

    .line 963
    iget-object v4, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v4, :cond_26

    .line 964
    new-instance v9, Lflyme/support/v7/app/AlertController$AlertParams$1;

    iget-object v3, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v4, p1, Lflyme/support/v7/app/AlertController;->mMultiChoiceItemLayout:I

    const v5, 0x1020014

    iget-object v6, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, v9

    move-object v2, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lflyme/support/v7/app/AlertController$AlertParams$1;-><init>(Lflyme/support/v7/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lflyme/support/v7/app/AlertController$RecycleListView;)V

    goto :goto_67

    .line 978
    :cond_26
    new-instance v9, Lflyme/support/v7/app/AlertController$AlertParams$2;

    iget-object v3, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lflyme/support/v7/app/AlertController$AlertParams$2;-><init>(Lflyme/support/v7/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLflyme/support/v7/app/AlertController$RecycleListView;Lflyme/support/v7/app/AlertController;)V

    goto :goto_67

    .line 1004
    :cond_33
    iget-boolean v1, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_3a

    .line 1005
    iget v1, p1, Lflyme/support/v7/app/AlertController;->mSingleChoiceItemLayout:I

    goto :goto_3c

    .line 1007
    :cond_3a
    iget v1, p1, Lflyme/support/v7/app/AlertController;->mListItemLayout:I

    :goto_3c
    move v4, v1

    .line 1010
    iget-object v5, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const v1, 0x1020014

    if-eqz v5, :cond_59

    .line 1011
    new-instance v9, Landroid/widget/SimpleCursorAdapter;

    iget-object v3, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    new-array v6, v8, [Ljava/lang/String;

    iget-object v2, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    new-array v10, v8, [I

    aput v1, v10, v7

    move-object v2, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto :goto_67

    .line 1012
    :cond_59
    iget-object v9, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v9, :cond_5e

    goto :goto_67

    .line 1015
    :cond_5e
    new-instance v9, Lflyme/support/v7/app/AlertController$CheckedItemAdapter;

    iget-object v2, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v9, v2, v4, v1, v3}, Lflyme/support/v7/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 1019
    :goto_67
    iget-object v1, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lflyme/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_6e

    .line 1020
    invoke-interface {v1, v0}, Lflyme/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1026
    :cond_6e
    iput-object v9, p1, Lflyme/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 1027
    iget v1, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    iput v1, p1, Lflyme/support/v7/app/AlertController;->mCheckedItem:I

    .line 1029
    iget-object v1, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_81

    .line 1030
    new-instance v1, Lflyme/support/v7/app/AlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lflyme/support/v7/app/AlertController$AlertParams$3;-><init>(Lflyme/support/v7/app/AlertController$AlertParams;Lflyme/support/v7/app/AlertController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_8d

    .line 1039
    :cond_81
    iget-object v1, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_8d

    .line 1040
    new-instance v1, Lflyme/support/v7/app/AlertController$AlertParams$4;

    invoke-direct {v1, p0, v0, p1}, Lflyme/support/v7/app/AlertController$AlertParams$4;-><init>(Lflyme/support/v7/app/AlertController$AlertParams;Lflyme/support/v7/app/AlertController$RecycleListView;Lflyme/support/v7/app/AlertController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1052
    :cond_8d
    :goto_8d
    iget-object v1, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_94

    .line 1053
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1056
    :cond_94
    iget-boolean v1, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_9c

    .line 1057
    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_a4

    .line 1058
    :cond_9c
    iget-boolean p0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz p0, :cond_a4

    const/4 p0, 0x2

    .line 1059
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1061
    :cond_a4
    :goto_a4
    iput-object v0, p1, Lflyme/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public apply(Lflyme/support/v7/app/AlertController;)V
    .registers 9

    .line 901
    instance-of v0, p1, Lflyme/support/v7/app/FlymeAlertController;

    if-eqz v0, :cond_f

    .line 902
    new-instance v0, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;

    invoke-direct {v0, p0}, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;-><init>(Lflyme/support/v7/app/AlertController$AlertParams;)V

    .line 903
    check-cast p1, Lflyme/support/v7/app/FlymeAlertController;

    invoke-virtual {v0, p1}, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->apply(Lflyme/support/v7/app/FlymeAlertController;)V

    return-void

    .line 906
    :cond_f
    iget-object v0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 907
    invoke-virtual {p1, v0}, Lflyme/support/v7/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_37

    .line 909
    :cond_17
    iget-object v0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1e

    .line 910
    invoke-virtual {p1, v0}, Lflyme/support/v7/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 912
    :cond_1e
    iget-object v0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_25

    .line 913
    invoke-virtual {p1, v0}, Lflyme/support/v7/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 915
    :cond_25
    iget v0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mIconId:I

    if-eqz v0, :cond_2c

    .line 916
    invoke-virtual {p1, v0}, Lflyme/support/v7/app/AlertController;->setIcon(I)V

    .line 918
    :cond_2c
    iget v0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mIconAttrId:I

    if-eqz v0, :cond_37

    .line 919
    invoke-virtual {p1, v0}, Lflyme/support/v7/app/AlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lflyme/support/v7/app/AlertController;->setIcon(I)V

    .line 922
    :cond_37
    :goto_37
    iget-object v0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3e

    .line 923
    invoke-virtual {p1, v0}, Lflyme/support/v7/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 925
    :cond_3e
    iget-object v0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-nez v0, :cond_46

    iget-object v0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_52

    :cond_46
    const/4 v2, -0x1

    .line 926
    iget-object v3, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lflyme/support/v7/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 928
    :cond_52
    iget-object v0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-nez v0, :cond_5a

    iget-object v0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_66

    :cond_5a
    const/4 v2, -0x2

    .line 929
    iget-object v3, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lflyme/support/v7/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 931
    :cond_66
    iget-object v0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-nez v0, :cond_6e

    iget-object v0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7a

    :cond_6e
    const/4 v2, -0x3

    .line 932
    iget-object v3, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lflyme/support/v7/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 936
    :cond_7a
    iget-object v0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_86

    iget-object v0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_86

    iget-object v0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_89

    .line 937
    :cond_86
    invoke-direct {p0, p1}, Lflyme/support/v7/app/AlertController$AlertParams;->createListView(Lflyme/support/v7/app/AlertController;)V

    .line 939
    :cond_89
    iget-object v2, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v2, :cond_a2

    .line 940
    iget-boolean v0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_9e

    .line 941
    iget v3, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mViewSpacingLeft:I

    iget v4, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mViewSpacingTop:I

    iget v5, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mViewSpacingRight:I

    iget v6, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mViewSpacingBottom:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lflyme/support/v7/app/AlertController;->setView(Landroid/view/View;IIII)V

    goto :goto_a9

    .line 943
    :cond_9e
    invoke-virtual {p1, v2}, Lflyme/support/v7/app/AlertController;->setView(Landroid/view/View;)V

    goto :goto_a9

    .line 945
    :cond_a2
    iget p0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz p0, :cond_a9

    .line 946
    invoke-virtual {p1, p0}, Lflyme/support/v7/app/AlertController;->setView(I)V

    :cond_a9
    :goto_a9
    return-void
.end method
