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

    .line 310
    const-class v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;)V"
        }
    .end annotation

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    .line 316
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    .line 317
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 318
    const/4 v0, 0x0

    :goto_16
    if-ge v0, p1, :cond_1f

    .line 319
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    aput v0, v1, v0

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 321
    :cond_1f
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$1;)V
    .registers 3

    .line 309
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;-><init>(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;)Ljava/util/List;
    .registers 1

    .line 309
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    return-object p0
.end method

.method private getUsageRank(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .registers 7

    .line 331
    invoke-static {p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->access$000(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result p2

    .line 332
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    array-length v0, v0

    .line 333
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_26

    .line 334
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    aget v2, v2, v1

    .line 335
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    .line 336
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 337
    iget-object v3, v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3, p1}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    if-ne v2, p2, :cond_23

    .line 339
    return v1

    .line 333
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 343
    :cond_26
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method protected dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 8

    .line 383
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    array-length v2, v1

    if-ge v0, v2, :cond_33

    .line 384
    aget v1, v1, v0

    .line 385
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rank="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " item="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 388
    :cond_33
    return-void
.end method

.method public getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .registers 9

    .line 360
    invoke-direct {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->getUsageRank(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result p3

    .line 361
    const/4 v0, 0x0

    if-gez p3, :cond_8

    .line 365
    return-object v0

    .line 367
    :cond_8
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    array-length v1, v1

    .line 368
    const/4 v2, 0x1

    :goto_c
    if-ge v2, v1, :cond_2c

    .line 369
    add-int v3, p3, v2

    rem-int/2addr v3, v1

    .line 370
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    aget v3, v4, v3

    .line 372
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    .line 373
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 374
    if-eqz p1, :cond_2b

    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p2, v4}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 375
    nop

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 377
    :cond_2b
    return-object v3

    .line 379
    :cond_2c
    return-object v0
.end method

.method public onUserAction(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 6

    .line 347
    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->getUsageRank(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result p1

    .line 349
    if-gtz p1, :cond_7

    .line 350
    return-void

    .line 352
    :cond_7
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    aget v0, p2, p1

    .line 353
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p2, v2, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    aput v0, p1, v2

    .line 356
    return-void
.end method
