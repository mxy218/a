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
    .registers 13
    .param p1, "imeName"  # Ljava/lang/CharSequence;
    .param p2, "subtypeName"  # Ljava/lang/CharSequence;
    .param p3, "imi"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p4, "subtypeId"  # I
    .param p5, "subtypeLocale"  # Ljava/lang/String;
    .param p6, "systemLocale"  # Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    .line 62
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    .line 63
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 64
    iput p4, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    .line 65
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 66
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLocale:Z

    .line 67
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLanguage:Z

    goto :goto_3f

    .line 69
    :cond_17
    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLocale:Z

    .line 70
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLocale:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_25

    .line 71
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLanguage:Z

    goto :goto_3f

    .line 74
    :cond_25
    invoke-static {p6}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "systemLanguage":Ljava/lang/String;
    invoke-static {p5}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "subtypeLanguage":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3c

    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    move v1, v2

    goto :goto_3d

    :cond_3c
    nop

    :goto_3d
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLanguage:Z

    .line 80
    .end local v0  # "systemLanguage":Ljava/lang/String;
    .end local v3  # "subtypeLanguage":Ljava/lang/String;
    :goto_3f
    return-void
.end method

.method private static compareNullableCharSequences(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 6
    .param p0, "c1"  # Ljava/lang/CharSequence;
    .param p1, "c2"  # Ljava/lang/CharSequence;

    .line 98
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 99
    .local v0, "empty1":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 100
    .local v1, "empty2":Z
    if-nez v0, :cond_1a

    if-eqz v1, :cond_d

    goto :goto_1a

    .line 103
    :cond_d
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 101
    :cond_1a
    :goto_1a
    sub-int v2, v0, v1

    return v2
.end method

.method private static parseLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "locale"  # Ljava/lang/String;

    .line 87
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 88
    .local v0, "idx":I
    if-gez v0, :cond_9

    .line 89
    return-object p0

    .line 91
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public compareTo(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;)I
    .registers 7
    .param p1, "other"  # Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 126
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const-string v1, "com.sohu.inputmethod.sogou.meizu/com.sohu.inputmethod.sogou.SogouIME"

    const/4 v2, -0x1

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 127
    return v2

    .line 129
    :cond_12
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v0, :cond_22

    .line 130
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 131
    const/4 v0, 0x1

    return v0

    .line 134
    :cond_22
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->compareNullableCharSequences(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 135
    .local v0, "result":I
    if-eqz v0, :cond_2d

    .line 136
    return v0

    .line 139
    :cond_2d
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLocale:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_34

    move v1, v2

    goto :goto_35

    :cond_34
    move v1, v3

    :goto_35
    iget-boolean v4, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLocale:Z

    if-eqz v4, :cond_3b

    move v4, v2

    goto :goto_3c

    :cond_3b
    move v4, v3

    :goto_3c
    sub-int/2addr v1, v4

    .line 140
    .end local v0  # "result":I
    .local v1, "result":I
    if-eqz v1, :cond_40

    .line 141
    return v1

    .line 144
    :cond_40
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLanguage:Z

    if-eqz v0, :cond_46

    move v0, v2

    goto :goto_47

    :cond_46
    move v0, v3

    :goto_47
    iget-boolean v4, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mIsSystemLanguage:Z

    if-eqz v4, :cond_4c

    goto :goto_4d

    :cond_4c
    move v2, v3

    :goto_4d
    sub-int/2addr v0, v2

    .line 145
    .end local v1  # "result":I
    .restart local v0  # "result":I
    if-eqz v0, :cond_51

    .line 146
    return v0

    .line 148
    :cond_51
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->compareNullableCharSequences(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 149
    if-eqz v0, :cond_5c

    .line 150
    return v0

    .line 152
    :cond_5c
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 51
    check-cast p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->compareTo(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"  # Ljava/lang/Object;

    .line 168
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 169
    return v0

    .line 171
    :cond_4
    instance-of v1, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 172
    move-object v1, p1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 173
    .local v1, "that":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget v3, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    iget v4, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    if-ne v3, v4, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0

    .line 175
    .end local v1  # "that":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :cond_1f
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 157
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
