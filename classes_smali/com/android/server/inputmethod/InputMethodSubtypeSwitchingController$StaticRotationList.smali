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

    .line 258
    .local p1, "imeSubtypeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    .line 260
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;)Ljava/util/List;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    .line 256
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    return-object v0
.end method

.method private getIndex(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .registers 8
    .param p1, "imi"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"  # Landroid/view/inputmethod/InputMethodSubtype;

    .line 270
    invoke-static {p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->access$000(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result v0

    .line 271
    .local v0, "currentSubtypeId":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 272
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_25

    .line 273
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 275
    .local v3, "isli":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1, v4}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    iget v4, v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    if-ne v4, v0, :cond_22

    .line 276
    return v2

    .line 272
    .end local v3  # "isli":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 279
    .end local v2  # "i":I
    :cond_25
    const/4 v2, -0x1

    return v2
.end method


# virtual methods
.method protected dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"  # Landroid/util/Printer;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 311
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_35

    .line 312
    move v2, v1

    .line 313
    .local v2, "rank":I
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 314
    .local v3, "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "rank="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " item="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 311
    .end local v2  # "rank":I
    .end local v3  # "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 316
    .end local v1  # "i":I
    :cond_35
    return-void
.end method

.method public getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .registers 11
    .param p1, "onlyCurrentIme"  # Z
    .param p2, "imi"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"  # Landroid/view/inputmethod/InputMethodSubtype;

    .line 284
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 285
    return-object v0

    .line 287
    :cond_4
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_e

    .line 288
    return-object v0

    .line 290
    :cond_e
    invoke-direct {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->getIndex(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result v1

    .line 291
    .local v1, "currentIndex":I
    if-gez v1, :cond_15

    .line 292
    return-object v0

    .line 294
    :cond_15
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 295
    .local v2, "N":I
    const/4 v3, 0x1

    .local v3, "offset":I
    :goto_1c
    if-ge v3, v2, :cond_38

    .line 297
    add-int v4, v1, v3

    rem-int/2addr v4, v2

    .line 298
    .local v4, "candidateIndex":I
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 301
    .local v5, "candidate":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-eqz p1, :cond_37

    iget-object v6, v5, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p2, v6}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    .line 302
    nop

    .line 295
    .end local v4  # "candidateIndex":I
    .end local v5  # "candidate":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 304
    .restart local v4  # "candidateIndex":I
    .restart local v5  # "candidate":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :cond_37
    return-object v5

    .line 306
    .end local v3  # "offset":I
    .end local v4  # "candidateIndex":I
    .end local v5  # "candidate":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :cond_38
    return-object v0
.end method
