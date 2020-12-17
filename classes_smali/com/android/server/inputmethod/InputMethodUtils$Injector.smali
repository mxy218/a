.class Lcom/android/server/inputmethod/InputMethodUtils$Injector;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# static fields
.field static IS_FLYME:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1385
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/inputmethod/InputMethodUtils$Injector;->IS_FLYME:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;
    .registers 9
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "imi"  # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "imiLabel"  # Ljava/lang/CharSequence;
    .param p3, "subtype"  # Landroid/view/inputmethod/InputMethodSubtype;

    .line 1390
    if-nez p3, :cond_3

    .line 1391
    return-object p2

    .line 1393
    :cond_3
    nop

    .line 1394
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1393
    invoke-virtual {p3, p0, v0, v1}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1395
    .local v0, "subtypeLabel":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sohu.inputmethod.sogou.meizu/com.sohu.inputmethod.sogou.SogouIME"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_4d

    .line 1398
    :cond_25
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1399
    const-string v3, ""

    goto :goto_46

    :cond_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_46
    aput-object v3, v1, v2

    .line 1398
    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 1396
    :cond_4d
    :goto_4d
    return-object p2
.end method
