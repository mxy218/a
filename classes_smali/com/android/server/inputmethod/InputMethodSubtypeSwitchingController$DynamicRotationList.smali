.class Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DynamicRotationList"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mImeSubtypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsageHistoryOfSubtypeListItemIndex:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 320
    const-class v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;)V"
        }
    .end annotation

    .line 324
    .local p1, "imeSubtypeListItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    .line 326
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    .line 327
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 328
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_1f

    .line 329
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    aput v1, v2, v1

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 331
    .end local v1  # "i":I
    :cond_1f
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$1;)V
    .registers 3
    .param p1, "x0"  # Ljava/util/List;
    .param p2, "x1"  # Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$1;

    .line 319
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;-><init>(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;)Ljava/util/List;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    .line 319
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    return-object v0
.end method

.method private getUsageRank(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .registers 9
    .param p1, "imi"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"  # Landroid/view/inputmethod/InputMethodSubtype;

    .line 341
    invoke-static {p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->access$000(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result v0

    .line 342
    .local v0, "currentSubtypeId":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    array-length v1, v1

    .line 343
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "usageRank":I
    :goto_8
    if-ge v2, v1, :cond_26

    .line 344
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    aget v3, v3, v2

    .line 345
    .local v3, "subtypeListItemIndex":I
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    .line 346
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 347
    .local v4, "subtypeListItem":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v5, v4, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v5, p1}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    iget v5, v4, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    if-ne v5, v0, :cond_23

    .line 349
    return v2

    .line 343
    .end local v3  # "subtypeListItemIndex":I
    .end local v4  # "subtypeListItem":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 353
    .end local v2  # "usageRank":I
    :cond_26
    const/4 v2, -0x1

    return v2
.end method


# virtual methods
.method protected dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"  # Landroid/util/Printer;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 393
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    array-length v2, v1

    if-ge v0, v2, :cond_33

    .line 394
    aget v1, v1, v0

    .line 395
    .local v1, "rank":I
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 396
    .local v2, "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rank="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 393
    .end local v1  # "rank":I
    .end local v2  # "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 398
    .end local v0  # "i":I
    :cond_33
    return-void
.end method

.method public getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .registers 12
    .param p1, "onlyCurrentIme"  # Z
    .param p2, "imi"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"  # Landroid/view/inputmethod/InputMethodSubtype;

    .line 370
    invoke-direct {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->getUsageRank(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result v0

    .line 371
    .local v0, "currentUsageRank":I
    const/4 v1, 0x0

    if-gez v0, :cond_8

    .line 375
    return-object v1

    .line 377
    :cond_8
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    array-length v2, v2

    .line 378
    .local v2, "N":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_c
    if-ge v3, v2, :cond_2c

    .line 379
    add-int v4, v0, v3

    rem-int/2addr v4, v2

    .line 380
    .local v4, "subtypeListItemRank":I
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    aget v5, v5, v4

    .line 382
    .local v5, "subtypeListItemIndex":I
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    .line 383
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 384
    .local v6, "subtypeListItem":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-eqz p1, :cond_2b

    iget-object v7, v6, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p2, v7}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2b

    .line 385
    nop

    .line 378
    .end local v4  # "subtypeListItemRank":I
    .end local v5  # "subtypeListItemIndex":I
    .end local v6  # "subtypeListItem":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 387
    .restart local v4  # "subtypeListItemRank":I
    .restart local v5  # "subtypeListItemIndex":I
    .restart local v6  # "subtypeListItem":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :cond_2b
    return-object v6

    .line 389
    .end local v3  # "i":I
    .end local v4  # "subtypeListItemRank":I
    .end local v5  # "subtypeListItemIndex":I
    .end local v6  # "subtypeListItem":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :cond_2c
    return-object v1
.end method

.method public onUserAction(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 8
    .param p1, "imi"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"  # Landroid/view/inputmethod/InputMethodSubtype;

    .line 357
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->getUsageRank(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result v0

    .line 359
    .local v0, "currentUsageRank":I
    if-gtz v0, :cond_7

    .line 360
    return-void

    .line 362
    :cond_7
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    aget v2, v1, v0

    .line 363
    .local v2, "currentItemIndex":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    aput v2, v1, v4

    .line 366
    return-void
.end method
