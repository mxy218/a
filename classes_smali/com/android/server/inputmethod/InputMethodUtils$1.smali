.class Lcom/android/server/inputmethod/InputMethodUtils$1;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"

# interfaces
.implements Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor<",
        "Landroid/view/inputmethod/InputMethodSubtype;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/util/Locale;
    .registers 2

    .line 426
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Locale;
    .registers 2

    .line 423
    check-cast p1, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils$1;->get(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/util/Locale;

    move-result-object p1

    return-object p1
.end method
