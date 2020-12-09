.class public Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImeSubtypeListItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final mImeName:Ljava/lang/CharSequence;

.field public final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field public final mIsSystemLanguage:Z

.field public final mIsSystemLocale:Z

.field public final mSubtypeId:I

.field public final mSubtypeName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    .line 61
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    .line 62
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 63
    iput p4, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    .line 64
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_17

    .line 65
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLocale:Z

    .line 66
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLanguage:Z

    goto :goto_3f

    .line 68
    :cond_17
    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLocale:Z

    .line 69
    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLocale:Z

    const/4 p3, 0x1

    if-eqz p1, :cond_25

    .line 70
    iput-boolean p3, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLanguage:Z

    goto :goto_3f

    .line 73
    :cond_25
    invoke-static {p6}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-static {p5}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p5

    const/4 p6, 0x2

    if-lt p5, p6, :cond_3c

    .line 76
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    move p2, p3

    goto :goto_3d

    :cond_3c
    nop

    :goto_3d
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLanguage:Z

    .line 79
    :goto_3f
    return-void
.end method

.method private static compareNullableCharSequences(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 4

    .line 97
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 99
    if-nez v0, :cond_1a

    if-eqz v1, :cond_d

    goto :goto_1a

    .line 102
    :cond_d
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 100
    :cond_1a
    :goto_1a
    sub-int/2addr v0, v1

    return v0
.end method

.method private static parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 86
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 87
    if-gez v0, :cond_9

    .line 88
    return-object p0

    .line 90
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;)I
    .registers 6

    .line 124
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->compareNullableCharSequences(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 125
    if-eqz v0, :cond_b

    .line 126
    return v0

    .line 129
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLocale:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    iget-boolean v3, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLocale:Z

    if-eqz v3, :cond_1a

    move v3, v1

    goto :goto_1b

    :cond_1a
    move v3, v2

    :goto_1b
    sub-int/2addr v0, v3

    .line 130
    if-eqz v0, :cond_1f

    .line 131
    return v0

    .line 134
    :cond_1f
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLanguage:Z

    if-eqz v0, :cond_25

    move v0, v1

    goto :goto_26

    :cond_25
    move v0, v2

    :goto_26
    iget-boolean v3, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLanguage:Z

    if-eqz v3, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    :goto_2c
    sub-int/2addr v0, v1

    .line 135
    if-eqz v0, :cond_30

    .line 136
    return v0

    .line 138
    :cond_30
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->compareNullableCharSequences(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 139
    if-eqz v0, :cond_3b

    .line 140
    return v0

    .line 142
    :cond_3b
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 50
    check-cast p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->compareTo(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 158
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 159
    return v0

    .line 161
    :cond_4
    instance-of v1, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 162
    check-cast p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 163
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    iget-object v3, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    iget p1, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    if-ne v1, p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    return v0

    .line 165
    :cond_1e
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImeSubtypeListItem{mImeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mSubtypeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mSubtypeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsSystemLocale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLocale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsSystemLanguage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLanguage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
