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
    .registers 4
    .param p0, "x0"  # Landroid/content/Context;
    .param p1, "x1"  # I
    .param p2, "x2"  # Landroid/content/ComponentName;

    .line 109
    invoke-static {p0, p1, p2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->queryInputMethod(Landroid/content/Context;ILandroid/content/ComponentName;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    return-object v0
.end method

.method private static queryInputMethod(Landroid/content/Context;ILandroid/content/ComponentName;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 13
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "userId"  # I
    .param p2, "componentName"  # Landroid/content/ComponentName;

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
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.inputmethodservice.MultiClientInputMethodService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x80

    .line 1129
    invoke-virtual {v1, v2, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 1134
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v4, "MultiClientInputMethodManagerService"

    if-eqz v3, :cond_27

    .line 1135
    const-string v3, "No IME found"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    return-object v0

    .line 1139
    :cond_27
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_34

    .line 1140
    const-string v3, "Only one IME service is supported."

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    return-object v0

    .line 1144
    :cond_34
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1145
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1146
    .local v6, "si":Landroid/content/pm/ServiceInfo;
    invoke-static {v3}, Landroid/view/inputmethod/InputMethodInfo;->computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v7

    .line 1147
    .local v7, "imeId":Ljava/lang/String;
    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v9, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_63

    .line 1148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " must have required"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    return-object v0

    .line 1153
    :cond_63
    sget-boolean v8, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v8, :cond_83

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v8

    if-nez v5, :cond_83

    .line 1154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " must be pre-installed when Build.IS_DEBUGGABLE is false"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    return-object v0

    .line 1159
    :cond_83
    :try_start_83
    new-instance v5, Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {v5, p0, v3}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_88} :catch_89

    return-object v5

    .line 1160
    :catch_89
    move-exception v5

    .line 1161
    .local v5, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to load input method "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1163
    .end local v5  # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private static reportNotSupported()V
    .registers 0

    .line 139
    return-void
.end method
