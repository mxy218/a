.class public final Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;
.super Ljava/lang/Object;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ApiCallbacks;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$ImeCallbacks;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserData;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserState;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$TokenInfo;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserDataMap;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientInfo;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowHandleSource;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientIdSource;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientState;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowInfo;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;,
        Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final IME_CONNECTION_UNIFIED_BIND_FLAGS:I = 0x44000005

.field private static final PER_DISPLAY_FOCUS_DISABLED_WARNING_MSG:Ljava/lang/String; = "Consider rebuilding the system image after enabling config_perDisplayFocusEnabled to make IME focus compatible with multi-client IME mode."

.field private static final PER_DISPLAY_FOCUS_DISABLED_WARNING_TITLE:Ljava/lang/String; = "config_perDisplayFocusEnabled is not true."

.field private static final RECONNECT_DELAY_MSEC:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "MultiClientInputMethodManagerService"

.field private static final sImeComponentName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 132
    sget-object v0, Landroid/view/inputmethod/InputMethodSystemProperty;->sMultiClientImeComponentName:Landroid/content/ComponentName;

    sput-object v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->sImeComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    return-void
.end method

.method static synthetic access$200()V
    .registers 0

    .line 109
    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->reportNotSupported()V

    return-void
.end method

.method static synthetic access$300()Landroid/content/ComponentName;
    .registers 1

    .line 109
    sget-object v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->sImeComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;ILandroid/content/ComponentName;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 3

    .line 109
    invoke-static {p0, p1, p2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->queryInputMethod(Landroid/content/Context;ILandroid/content/ComponentName;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p0

    return-object p0
.end method

.method private static queryInputMethod(Landroid/content/Context;ILandroid/content/ComponentName;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 9

    .line 1123
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 1124
    return-object v0

    .line 1128
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1129
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.inputmethodservice.MultiClientInputMethodService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p2

    const/16 v2, 0x80

    .line 1129
    invoke-virtual {v1, p2, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 1134
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const-string v1, "MultiClientInputMethodManagerService"

    if-eqz p2, :cond_27

    .line 1135
    const-string p0, "No IME found"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    return-object v0

    .line 1139
    :cond_27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x1

    if-le p2, v2, :cond_34

    .line 1140
    const-string p0, "Only one IME service is supported."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    return-object v0

    .line 1144
    :cond_34
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 1145
    iget-object p2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1146
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodInfo;->computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v3

    .line 1147
    iget-object v4, p2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v5, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 1148
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have required"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    return-object v0

    .line 1153
    :cond_63
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v4, :cond_83

    iget-object p2, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p2, v2

    if-nez p2, :cond_83

    .line 1154
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be pre-installed when Build.IS_DEBUGGABLE is false"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    return-object v0

    .line 1159
    :cond_83
    :try_start_83
    new-instance p2, Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {p2, p0, p1}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_88} :catch_89

    return-object p2

    .line 1160
    :catch_89
    move-exception p0

    .line 1161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to load input method "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1163
    return-object v0
.end method

.method private static reportNotSupported()V
    .registers 0

    .line 139
    return-void
.end method
