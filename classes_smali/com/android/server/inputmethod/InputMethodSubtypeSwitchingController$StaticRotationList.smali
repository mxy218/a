.class Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StaticRotationList"
.end annotation


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


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;)V"
        }
    .end annotation

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    .line 250
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;)Ljava/util/List;
    .registers 1

    .line 246
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    return-object p0
.end method

.method private getIndex(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .registers 7

    .line 260
    invoke-static {p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->access$000(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result p2

    .line 261
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 262
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_25

    .line 263
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 265
    iget-object v3, v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1, v3}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    if-ne v2, p2, :cond_22

    .line 266
    return v1

    .line 262
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 269
    :cond_25
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method protected dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 8

    .line 300
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 301
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_35

    .line 302
    nop

    .line 303
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 304
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

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 306
    :cond_35
    return-void
.end method

.method public getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .registers 9

    .line 274
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 275
    return-object v0

    .line 277
    :cond_4
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_e

    .line 278
    return-object v0

    .line 280
    :cond_e
    invoke-direct {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->getIndex(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result p3

    .line 281
    if-gez p3, :cond_15

    .line 282
    return-object v0

    .line 284
    :cond_15
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 285
    nop

    :goto_1c
    if-ge v2, v1, :cond_38

    .line 287
    add-int v3, p3, v2

    rem-int/2addr v3, v1

    .line 288
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 291
    if-eqz p1, :cond_37

    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p2, v4}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 292
    nop

    .line 285
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 294
    :cond_37
    return-object v3

    .line 296
    :cond_38
    return-object v0
.end method
