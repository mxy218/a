.class Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "FlymeInputMethodAndSubtypeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubtypeCheckBoxPreference"
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private final mIsSystemLanguage:Z

.field private final mIsSystemLocale:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/text/Collator;)V
    .registers 6

    .line 386
    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 387
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 388
    iput-boolean v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->mIsSystemLocale:Z

    .line 389
    iput-boolean v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->mIsSystemLanguage:Z

    goto :goto_27

    .line 391
    :cond_f
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->mIsSystemLocale:Z

    .line 392
    iget-boolean p1, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->mIsSystemLocale:Z

    if-nez p1, :cond_24

    const/4 p1, 0x2

    .line 393
    invoke-virtual {p3, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    :cond_24
    const/4 v0, 0x1

    :cond_25
    iput-boolean v0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->mIsSystemLanguage:Z

    .line 395
    :goto_27
    iput-object p4, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .registers 7

    .line 400
    instance-of v0, p1, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;

    if-eqz v0, :cond_49

    .line 401
    check-cast p1, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;

    .line 402
    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 403
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 404
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 p0, 0x0

    return p0

    .line 407
    :cond_16
    iget-boolean v2, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->mIsSystemLocale:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_1c

    return v3

    .line 410
    :cond_1c
    iget-boolean v2, p1, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->mIsSystemLocale:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_22

    return v4

    .line 413
    :cond_22
    iget-boolean v2, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->mIsSystemLanguage:Z

    if-eqz v2, :cond_27

    return v3

    .line 416
    :cond_27
    iget-boolean p1, p1, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->mIsSystemLanguage:Z

    if-eqz p1, :cond_2c

    return v4

    .line 419
    :cond_2c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_33

    return v4

    .line 422
    :cond_33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3a

    return v3

    .line 425
    :cond_3a
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->mCollator:Ljava/text/Collator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 427
    :cond_49
    invoke-static {}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Illegal preference type."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->compareTo(Landroid/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 379
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeEnabler$SubtypeCheckBoxPreference;->compareTo(Landroid/preference/Preference;)I

    move-result p0

    return p0
.end method
