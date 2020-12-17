.class public Lcom/meizu/common/util/ListViewProxy;
.super Ljava/lang/Object;
.source "ListViewProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static mCheckedAll:Ljava/lang/reflect/Method;

.field private static mGetDragPosition:Ljava/lang/reflect/Method;

.field private static mSetDragListenerMethod:Ljava/lang/reflect/Method;

.field private static mSetEnableDragSelectionMethod:Ljava/lang/reflect/Method;

.field private static mUnCheckedAll:Ljava/lang/reflect/Method;


# instance fields
.field protected mAbsList:Landroid/widget/AbsListView;

.field private mIsFlyOS:Z


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .registers 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 p1, 0x1

    .line 151
    iput-boolean p1, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    return-void
.end method

.method private createListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 791
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getDragPostionAndId([J)V
    .registers 8

    .line 801
    iget-object v0, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_5e

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 803
    :try_start_6
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mGetDragPosition:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1d

    .line 804
    const-class v2, Landroid/widget/AbsListView;

    const-string v3, "getDragPosition"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mGetDragPosition:Ljava/lang/reflect/Method;
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception v2

    .line 807
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 808
    sput-object v0, Lcom/meizu/common/util/ListViewProxy;->mGetDragPosition:Ljava/lang/reflect/Method;

    .line 811
    :cond_1d
    :goto_1d
    iget-object v2, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    .line 812
    sget-object v3, Lcom/meizu/common/util/ListViewProxy;->mGetDragPosition:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_5e

    if-eqz v2, :cond_5e

    .line 816
    :try_start_2b
    iget-object v2, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_33} :catch_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_33} :catch_39
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2b .. :try_end_33} :catch_34

    goto :goto_42

    :catch_34
    move-exception v2

    .line 822
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_42

    :catch_39
    move-exception v2

    .line 820
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_42

    :catch_3e
    move-exception v2

    .line 818
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 825
    :goto_42
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_5e

    .line 826
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 827
    iget-object p0, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    check-cast p0, Landroid/widget/ListAdapter;

    .line 829
    invoke-interface {p0, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    int-to-long v4, v0

    .line 831
    aput-wide v4, p1, v1

    const/4 p0, 0x1

    .line 832
    aput-wide v2, p1, p0

    :cond_5e
    return-void
.end method

.method public static setItemForChecked(Landroid/widget/AbsListView;Landroid/view/View;)Z
    .registers 6

    .line 768
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-lt v0, v3, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    if-eqz p1, :cond_46

    .line 769
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v3

    if-eqz v3, :cond_16

    if-eqz v0, :cond_16

    goto :goto_46

    .line 772
    :cond_16
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_46

    const v0, 0x1020001

    .line 773
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 774
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_46

    .line 775
    instance-of v0, p1, Lcom/meizu/common/widget/AnimCheckBox;

    if-eqz v0, :cond_34

    .line 776
    move-object v0, p1

    check-cast v0, Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/AnimCheckBox;->setIsAnimation(Z)V

    .line 778
    :cond_34
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result p0

    if-lez p0, :cond_40

    .line 779
    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_45

    .line 781
    :cond_40
    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    :goto_45
    return v1

    :cond_46
    :goto_46
    return v2
.end method


# virtual methods
.method protected bottomDeviderEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public checkedAll()Z
    .registers 6

    .line 542
    iget-boolean v0, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_17

    .line 543
    :goto_6
    iget-object v0, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_16

    .line 544
    iget-object v0, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_16
    return v1

    .line 548
    :cond_17
    iget-object v0, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-nez v0, :cond_27

    const-string/jumbo p0, "tag"

    const-string/jumbo v0, "the Target is not a ListView"

    .line 549
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 553
    :cond_27
    :try_start_27
    const-class v0, Landroid/widget/ListView;

    .line 554
    sget-object v3, Lcom/meizu/common/util/ListViewProxy;->mCheckedAll:Ljava/lang/reflect/Method;

    if-nez v3, :cond_37

    const-string v3, "checkedAll"

    new-array v4, v2, [Ljava/lang/Class;

    .line 555
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/ListViewProxy;->mCheckedAll:Ljava/lang/reflect/Method;

    .line 557
    :cond_37
    sget-object v0, Lcom/meizu/common/util/ListViewProxy;->mCheckedAll:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 558
    sget-object v0, Lcom/meizu/common/util/ListViewProxy;->mCheckedAll:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_45} :catch_46

    return v1

    :catch_46
    const/4 p0, 0x0

    .line 561
    sput-object p0, Lcom/meizu/common/util/ListViewProxy;->mCheckedAll:Ljava/lang/reflect/Method;

    const-string p0, "AbsListViewProxy"

    const-string v0, "checkedAll fail to be invoked"

    .line 562
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method protected dividerEnabled(I)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method protected getActionItemType(Landroid/view/MenuItem;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getDividerPadding(I)[I
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 p1, 0x0

    .line 165
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "onActionItemDragStart"

    .line 166
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3e

    .line 168
    array-length p2, p3

    if-lez p2, :cond_29

    .line 169
    aget-object p2, p3, v3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p3, p3, v2

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/meizu/common/util/ListViewProxy;->onActionItemDragStart(IJ)I

    move-result p0

    goto :goto_37

    :cond_29
    new-array p2, v1, [J

    .line 172
    invoke-direct {p0, p2}, Lcom/meizu/common/util/ListViewProxy;->getDragPostionAndId([J)V

    .line 173
    aget-wide v0, p2, v3

    long-to-int p3, v0

    aget-wide v0, p2, v2

    invoke-virtual {p0, p3, v0, v1}, Lcom/meizu/common/util/ListViewProxy;->onActionItemDragStart(IJ)I

    move-result p0

    .line 175
    :goto_37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_3b
    move-object p1, p0

    goto/16 :goto_125

    :cond_3e
    const-string/jumbo v0, "onActionItemDrop"

    .line 176
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 177
    aget-object p2, p3, v3

    check-cast p2, Landroid/view/MenuItem;

    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p3, p3, v1

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/meizu/common/util/ListViewProxy;->onActionItemDrop(Landroid/view/MenuItem;IJ)V

    goto/16 :goto_125

    :cond_60
    const-string/jumbo v0, "onActionItemDragEnd"

    .line 178
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 179
    array-length p2, p3

    if-lez p2, :cond_81

    .line 180
    aget-object p2, p3, v3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p3, p3, v2

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/meizu/common/util/ListViewProxy;->onActionItemDragEnd(IJ)V

    goto/16 :goto_125

    :cond_81
    new-array p2, v1, [J

    .line 183
    invoke-direct {p0, p2}, Lcom/meizu/common/util/ListViewProxy;->getDragPostionAndId([J)V

    .line 184
    aget-wide v0, p2, v3

    long-to-int p3, v0

    aget-wide v0, p2, v2

    invoke-virtual {p0, p3, v0, v1}, Lcom/meizu/common/util/ListViewProxy;->onActionItemDragEnd(IJ)V

    goto/16 :goto_125

    :cond_90
    const-string v0, "getActionItemType"

    .line 186
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 187
    aget-object p2, p3, v3

    check-cast p2, Landroid/view/MenuItem;

    invoke-virtual {p0, p2}, Lcom/meizu/common/util/ListViewProxy;->getActionItemType(Landroid/view/MenuItem;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_3b

    :cond_a5
    const-string/jumbo v0, "onDragSelection"

    .line 188
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 189
    aget-object p2, p3, v3

    check-cast p2, Landroid/view/View;

    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p3, p3, v1

    check-cast p3, Ljava/lang/Long;

    .line 190
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 189
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/meizu/common/util/ListViewProxy;->onDragSelection(Landroid/view/View;IJ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_3b

    :cond_cc
    const-string/jumbo v0, "topDividerEnabled"

    .line 191
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 192
    invoke-virtual {p0}, Lcom/meizu/common/util/ListViewProxy;->topDividerEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_3b

    :cond_df
    const-string v0, "dividerEnabled"

    .line 193
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 194
    aget-object p2, p3, v3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/meizu/common/util/ListViewProxy;->dividerEnabled(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_3b

    :cond_f9
    const-string v0, "bottomDeviderEnabled"

    .line 195
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 196
    invoke-virtual {p0}, Lcom/meizu/common/util/ListViewProxy;->bottomDeviderEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_3b

    :cond_10b
    const-string v0, "getDividerPadding"

    .line 197
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_125

    .line 198
    aget-object p2, p3, v3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/meizu/common/util/ListViewProxy;->getDividerPadding(I)[I

    move-result-object p0
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11f} :catch_121

    goto/16 :goto_3b

    :catch_121
    move-exception p0

    .line 201
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_125
    :goto_125
    return-object p1
.end method

.method protected onActionItemDragEnd(IJ)V
    .registers 4

    return-void
.end method

.method protected onActionItemDragStart(IJ)I
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method protected onActionItemDrop(Landroid/view/MenuItem;IJ)V
    .registers 5

    return-void
.end method

.method protected onDragSelection(Landroid/view/View;IJ)Z
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public setEnableDragSelection(Z)Z
    .registers 8

    .line 371
    iget-boolean v0, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-nez v0, :cond_c

    goto :goto_49

    .line 376
    :cond_c
    :try_start_c
    sget-object v0, Lcom/meizu/common/util/ListViewProxy;->mSetEnableDragSelectionMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v0, :cond_22

    .line 377
    const-class v0, Landroid/widget/ListView;

    const-string/jumbo v3, "setEnableDragSelection"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/ListViewProxy;->mSetEnableDragSelectionMethod:Ljava/lang/reflect/Method;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_22} :catch_42

    .line 389
    :cond_22
    :try_start_22
    sget-object v0, Lcom/meizu/common/util/ListViewProxy;->mSetEnableDragSelectionMethod:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_31} :catch_3d
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_31} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_22 .. :try_end_31} :catch_33

    move v1, v2

    goto :goto_41

    :catch_33
    move-exception p0

    .line 396
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_41

    :catch_38
    move-exception p0

    .line 394
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_41

    :catch_3d
    move-exception p0

    .line 392
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_41
    return v1

    :catch_42
    move-exception p0

    .line 381
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 382
    sput-object p0, Lcom/meizu/common/util/ListViewProxy;->mSetEnableDragSelectionMethod:Ljava/lang/reflect/Method;

    :cond_49
    :goto_49
    return v1
.end method

.method public setEnabledMultiChoice()Z
    .registers 8

    .line 316
    iget-boolean v0, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 317
    iget-object p0, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    return v1

    :cond_c
    const/4 v0, 0x4

    const/4 v2, 0x0

    :try_start_e
    const-string v3, "android.widget.AbsListView$OnItemDragListener"

    .line 324
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 325
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDragListenerMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_27

    .line 326
    const-class v4, Landroid/widget/AbsListView;

    const-string/jumbo v5, "setItemDragListener"

    new-array v6, v1, [Ljava/lang/Class;

    aput-object v3, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDragListenerMethod:Ljava/lang/reflect/Method;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_27} :catch_4e

    .line 340
    :cond_27
    invoke-direct {p0, v3}, Lcom/meizu/common/util/ListViewProxy;->createListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4c

    .line 346
    :try_start_2d
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDragListenerMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object p0, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setChoiceMode(I)V
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_3d} :catch_48
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_3d} :catch_43
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2d .. :try_end_3d} :catch_3e

    goto :goto_4d

    :catch_3e
    move-exception p0

    .line 355
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4c

    :catch_43
    move-exception p0

    .line 353
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_4c

    :catch_48
    move-exception p0

    .line 351
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_4c
    :goto_4c
    move v1, v2

    :goto_4d
    return v1

    :catch_4e
    move-exception p0

    .line 333
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 335
    sput-object p0, Lcom/meizu/common/util/ListViewProxy;->mSetDragListenerMethod:Ljava/lang/reflect/Method;

    return v2
.end method

.method protected topDividerEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public unCheckedAll()Z
    .registers 6

    .line 573
    iget-object v0, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v1, v0, Landroid/widget/ListView;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const-string/jumbo p0, "tag"

    const-string/jumbo v0, "unchecked error"

    .line 574
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 577
    :cond_11
    iget-boolean v1, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    const/4 v3, 0x1

    if-nez v1, :cond_24

    .line 578
    invoke-virtual {v0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 579
    iget-object v0, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 580
    iget-object p0, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    return v3

    .line 585
    :cond_24
    :try_start_24
    const-class v0, Landroid/widget/ListView;

    .line 586
    sget-object v1, Lcom/meizu/common/util/ListViewProxy;->mUnCheckedAll:Ljava/lang/reflect/Method;

    if-nez v1, :cond_35

    const-string/jumbo v1, "unCheckedAll"

    new-array v4, v2, [Ljava/lang/Class;

    .line 587
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/ListViewProxy;->mUnCheckedAll:Ljava/lang/reflect/Method;

    .line 589
    :cond_35
    sget-object v0, Lcom/meizu/common/util/ListViewProxy;->mUnCheckedAll:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 590
    sget-object v0, Lcom/meizu/common/util/ListViewProxy;->mUnCheckedAll:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_43} :catch_44

    return v3

    :catch_44
    const-string p0, "AbsListViewProxy"

    const-string/jumbo v0, "unCheckedAll fail to be invoked"

    .line 593
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 594
    sput-object p0, Lcom/meizu/common/util/ListViewProxy;->mUnCheckedAll:Ljava/lang/reflect/Method;

    return v2
.end method
