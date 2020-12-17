.class public Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;
.super Ljava/lang/Object;
.source "FlymeAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/app/FlymeAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParamsWrapper"
.end annotation


# instance fields
.field private mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;


# direct methods
.method public constructor <init>(Lflyme/support/v7/app/AlertController$AlertParams;)V
    .registers 2

    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 944
    iput-object p1, p0, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    return-void
.end method

.method static synthetic access$100(Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;)Lflyme/support/v7/app/AlertController$AlertParams;
    .registers 1

    .line 939
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    return-object p0
.end method

.method private createListView(Lflyme/support/v7/app/FlymeAlertController;)V
    .registers 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1020
    iget-object v0, v7, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget v1, v8, Lflyme/support/v7/app/FlymeAlertController;->mListLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lflyme/support/v7/app/FlymeAlertController$RecycleListView;

    .line 1024
    iget-object v0, v7, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-boolean v1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    const/4 v10, 0x1

    if-eqz v1, :cond_41

    .line 1025
    iget-object v3, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_31

    .line 1026
    new-instance v11, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper$1;

    iget-object v2, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v3, v8, Lflyme/support/v7/app/FlymeAlertController;->mMultiChoiceItemLayout:I

    const v4, 0x1020014

    iget-object v5, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper$1;-><init>(Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;Landroid/content/Context;II[Ljava/lang/CharSequence;Lflyme/support/v7/app/FlymeAlertController$RecycleListView;)V

    goto/16 :goto_ef

    .line 1043
    :cond_31
    new-instance v11, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper$2;

    iget-object v2, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v5, v9

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper$2;-><init>(Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;Landroid/content/Context;Landroid/database/Cursor;ZLflyme/support/v7/app/FlymeAlertController$RecycleListView;Lflyme/support/v7/app/FlymeAlertController;)V

    goto/16 :goto_ef

    .line 1067
    :cond_41
    iget-boolean v1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mIsListItemCenter:Z

    const v2, 0x1020014

    const/4 v3, 0x0

    if-eqz v1, :cond_bc

    .line 1068
    iget-object v1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_9c

    .line 1069
    iget-object v11, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v11, :cond_53

    goto/16 :goto_ef

    .line 1071
    :cond_53
    iget-object v1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mListItemColors:[Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_70

    .line 1072
    new-instance v1, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;

    iget-object v12, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1073
    invoke-static/range {p1 .. p1}, Lflyme/support/v7/app/FlymeAlertController;->access$200(Lflyme/support/v7/app/FlymeAlertController;)I

    move-result v13

    const v14, 0x1020014

    iget-object v0, v7, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v15, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mListItemColors:[Landroid/content/res/ColorStateList;

    move-object v11, v1

    move-object/from16 v16, v0

    invoke-direct/range {v11 .. v16}, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;[Landroid/content/res/ColorStateList;)V

    goto/16 :goto_ef

    .line 1077
    :cond_70
    iget-object v1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mListItemColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_8c

    .line 1078
    new-instance v1, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;

    iget-object v12, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1079
    invoke-static/range {p1 .. p1}, Lflyme/support/v7/app/FlymeAlertController;->access$200(Lflyme/support/v7/app/FlymeAlertController;)I

    move-result v13

    const v14, 0x1020014

    iget-object v0, v7, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v15, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mListItemColor:Landroid/content/res/ColorStateList;

    move-object v11, v1

    move-object/from16 v16, v0

    invoke-direct/range {v11 .. v16}, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    goto :goto_ef

    .line 1084
    :cond_8c
    new-instance v11, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;

    iget-object v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1085
    invoke-static/range {p1 .. p1}, Lflyme/support/v7/app/FlymeAlertController;->access$200(Lflyme/support/v7/app/FlymeAlertController;)I

    move-result v1

    iget-object v3, v7, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v3, v3, Lflyme/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v11, v0, v1, v2, v3}, Lflyme/support/v7/app/FlymeAlertController$ListItemCenterAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    goto :goto_ef

    .line 1090
    :cond_9c
    new-instance v1, Landroid/widget/SimpleCursorAdapter;

    iget-object v13, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1091
    invoke-static/range {p1 .. p1}, Lflyme/support/v7/app/FlymeAlertController;->access$200(Lflyme/support/v7/app/FlymeAlertController;)I

    move-result v14

    iget-object v0, v7, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v15, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v4, v10, [Ljava/lang/String;

    iget-object v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v0, v4, v3

    new-array v0, v10, [I

    aput v2, v0, v3

    move-object v12, v1

    move-object/from16 v16, v4

    move-object/from16 v17, v0

    invoke-direct/range {v12 .. v17}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object v11, v1

    goto :goto_ef

    .line 1098
    :cond_bc
    iget-boolean v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v0, :cond_c3

    .line 1099
    iget v0, v8, Lflyme/support/v7/app/FlymeAlertController;->mSingleChoiceItemLayout:I

    goto :goto_c5

    .line 1101
    :cond_c3
    iget v0, v8, Lflyme/support/v7/app/FlymeAlertController;->mListItemLayout:I

    :goto_c5
    move v13, v0

    .line 1104
    iget-object v0, v7, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v14, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-eqz v14, :cond_e1

    .line 1105
    new-instance v1, Landroid/widget/SimpleCursorAdapter;

    iget-object v12, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    new-array v15, v10, [Ljava/lang/String;

    iget-object v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v0, v15, v3

    new-array v0, v10, [I

    aput v2, v0, v3

    move-object v11, v1

    move-object/from16 v16, v0

    invoke-direct/range {v11 .. v16}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto :goto_ef

    .line 1110
    :cond_e1
    iget-object v11, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v11, :cond_e6

    goto :goto_ef

    .line 1113
    :cond_e6
    new-instance v11, Lflyme/support/v7/app/FlymeAlertController$CheckedItemAdapter;

    iget-object v1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v11, v1, v13, v2, v0}, Lflyme/support/v7/app/FlymeAlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 1117
    :goto_ef
    iget-object v0, v7, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lflyme/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v0, :cond_f8

    .line 1118
    invoke-interface {v0, v9}, Lflyme/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1124
    :cond_f8
    iput-object v11, v8, Lflyme/support/v7/app/FlymeAlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 1125
    iget-object v0, v7, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget v1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    iput v1, v8, Lflyme/support/v7/app/FlymeAlertController;->mCheckedItem:I

    .line 1127
    iget-object v1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_10d

    .line 1128
    new-instance v0, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper$3;

    invoke-direct {v0, v7, v8}, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper$3;-><init>(Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;Lflyme/support/v7/app/FlymeAlertController;)V

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_119

    .line 1137
    :cond_10d
    iget-object v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v0, :cond_119

    .line 1138
    new-instance v0, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper$4;

    invoke-direct {v0, v7, v9, v8}, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper$4;-><init>(Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;Lflyme/support/v7/app/FlymeAlertController$RecycleListView;Lflyme/support/v7/app/FlymeAlertController;)V

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1150
    :cond_119
    :goto_119
    iget-object v0, v7, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_122

    .line 1151
    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1154
    :cond_122
    iget-object v0, v7, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-boolean v1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_12c

    .line 1155
    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_134

    .line 1156
    :cond_12c
    iget-boolean v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v0, :cond_134

    const/4 v0, 0x2

    .line 1157
    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1159
    :cond_134
    :goto_134
    iput-object v9, v8, Lflyme/support/v7/app/FlymeAlertController;->mListView:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public apply(Lflyme/support/v7/app/FlymeAlertController;)V
    .registers 9

    .line 948
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v1, :cond_a

    .line 949
    invoke-virtual {p1, v1}, Lflyme/support/v7/app/FlymeAlertController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_30

    .line 951
    :cond_a
    iget-object v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_11

    .line 952
    invoke-virtual {p1, v0}, Lflyme/support/v7/app/FlymeAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 954
    :cond_11
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    .line 955
    invoke-virtual {p1, v0}, Lflyme/support/v7/app/FlymeAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 957
    :cond_1a
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mIconId:I

    if-eqz v0, :cond_23

    .line 958
    invoke-virtual {p1, v0}, Lflyme/support/v7/app/FlymeAlertController;->setIcon(I)V

    .line 960
    :cond_23
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mIconAttrId:I

    if-eqz v0, :cond_30

    .line 961
    invoke-virtual {p1, v0}, Lflyme/support/v7/app/FlymeAlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lflyme/support/v7/app/FlymeAlertController;->setIcon(I)V

    .line 964
    :cond_30
    :goto_30
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_39

    .line 965
    invoke-virtual {p1, v0}, Lflyme/support/v7/app/FlymeAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 967
    :cond_39
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-nez v1, :cond_43

    iget-object v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_51

    :cond_43
    const/4 v2, -0x1

    .line 968
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v3, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v4, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 974
    :cond_51
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-nez v1, :cond_5b

    iget-object v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_69

    :cond_5b
    const/4 v2, -0x2

    .line 975
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v3, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v4, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 981
    :cond_69
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-nez v1, :cond_73

    iget-object v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_81

    :cond_73
    const/4 v2, -0x3

    .line 982
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v3, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v4, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    iget-object v6, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    .line 990
    :cond_81
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v1, :cond_8f

    iget-object v1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_8f

    iget-object v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_92

    .line 991
    :cond_8f
    invoke-direct {p0, p1}, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->createListView(Lflyme/support/v7/app/FlymeAlertController;)V

    .line 993
    :cond_92
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget-object v2, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v2, :cond_ad

    .line 994
    iget-boolean v1, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v1, :cond_a9

    .line 995
    iget v3, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mViewSpacingLeft:I

    iget v4, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mViewSpacingTop:I

    iget v5, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mViewSpacingRight:I

    iget v6, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mViewSpacingBottom:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lflyme/support/v7/app/FlymeAlertController;->setView(Landroid/view/View;IIII)V

    goto :goto_b4

    .line 1001
    :cond_a9
    invoke-virtual {p1, v2}, Lflyme/support/v7/app/FlymeAlertController;->setView(Landroid/view/View;)V

    goto :goto_b4

    .line 1003
    :cond_ad
    iget v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v0, :cond_b4

    .line 1004
    invoke-virtual {p1, v0}, Lflyme/support/v7/app/FlymeAlertController;->setView(I)V

    .line 1015
    :cond_b4
    :goto_b4
    iget-object v0, p0, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget v0, v0, Lflyme/support/v7/app/AlertController$AlertParams;->mGravity:I

    invoke-virtual {p1, v0}, Lflyme/support/v7/app/FlymeAlertController;->setGravity(I)V

    .line 1016
    iget-object p0, p0, Lflyme/support/v7/app/FlymeAlertController$AlertParamsWrapper;->mAlertParams:Lflyme/support/v7/app/AlertController$AlertParams;

    iget p0, p0, Lflyme/support/v7/app/AlertController$AlertParams;->mMaxHeight:I

    invoke-virtual {p1, p0}, Lflyme/support/v7/app/FlymeAlertController;->setMaxHeight(I)V

    return-void
.end method
