.class public final enum Lcom/android/settings/applications/EnterpriseDefaultApps;
.super Ljava/lang/Enum;
.source "EnterpriseDefaultApps.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/applications/EnterpriseDefaultApps;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/applications/EnterpriseDefaultApps;

.field public static final enum BROWSER:Lcom/android/settings/applications/EnterpriseDefaultApps;

.field public static final enum CALENDAR:Lcom/android/settings/applications/EnterpriseDefaultApps;

.field public static final enum CAMERA:Lcom/android/settings/applications/EnterpriseDefaultApps;

.field public static final enum CONTACTS:Lcom/android/settings/applications/EnterpriseDefaultApps;

.field public static final enum EMAIL:Lcom/android/settings/applications/EnterpriseDefaultApps;

.field public static final enum MAP:Lcom/android/settings/applications/EnterpriseDefaultApps;

.field public static final enum PHONE:Lcom/android/settings/applications/EnterpriseDefaultApps;


# instance fields
.field private final mIntents:[Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 28
    new-instance v0, Lcom/android/settings/applications/EnterpriseDefaultApps;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const/4 v4, 0x0

    const-string v5, "android.intent.category.BROWSABLE"

    const-string v6, "http:"

    .line 29
    invoke-static {v3, v5, v6, v4}, Lcom/android/settings/applications/EnterpriseDefaultApps;->buildIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const-string v5, "BROWSER"

    invoke-direct {v0, v5, v6, v2}, Lcom/android/settings/applications/EnterpriseDefaultApps;-><init>(Ljava/lang/String;I[Landroid/content/Intent;)V

    sput-object v0, Lcom/android/settings/applications/EnterpriseDefaultApps;->BROWSER:Lcom/android/settings/applications/EnterpriseDefaultApps;

    .line 30
    new-instance v0, Lcom/android/settings/applications/EnterpriseDefaultApps;

    new-array v2, v1, [Landroid/content/Intent;

    const-string v5, "android.intent.action.INSERT"

    const-string/jumbo v7, "vnd.android.cursor.dir/event"

    .line 31
    invoke-static {v5, v4, v4, v7}, Lcom/android/settings/applications/EnterpriseDefaultApps;->buildIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    aput-object v5, v2, v6

    const-string v5, "CALENDAR"

    invoke-direct {v0, v5, v1, v2}, Lcom/android/settings/applications/EnterpriseDefaultApps;-><init>(Ljava/lang/String;I[Landroid/content/Intent;)V

    sput-object v0, Lcom/android/settings/applications/EnterpriseDefaultApps;->CALENDAR:Lcom/android/settings/applications/EnterpriseDefaultApps;

    .line 32
    new-instance v0, Lcom/android/settings/applications/EnterpriseDefaultApps;

    const/4 v2, 0x2

    new-array v5, v2, [Landroid/content/Intent;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v1

    const-string v7, "CAMERA"

    invoke-direct {v0, v7, v2, v5}, Lcom/android/settings/applications/EnterpriseDefaultApps;-><init>(Ljava/lang/String;I[Landroid/content/Intent;)V

    sput-object v0, Lcom/android/settings/applications/EnterpriseDefaultApps;->CAMERA:Lcom/android/settings/applications/EnterpriseDefaultApps;

    .line 35
    new-instance v0, Lcom/android/settings/applications/EnterpriseDefaultApps;

    new-array v5, v1, [Landroid/content/Intent;

    const-string v7, "android.intent.action.PICK"

    const-string/jumbo v8, "vnd.android.cursor.dir/contact"

    .line 36
    invoke-static {v7, v4, v4, v8}, Lcom/android/settings/applications/EnterpriseDefaultApps;->buildIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v7, 0x3

    const-string v8, "CONTACTS"

    invoke-direct {v0, v8, v7, v5}, Lcom/android/settings/applications/EnterpriseDefaultApps;-><init>(Ljava/lang/String;I[Landroid/content/Intent;)V

    sput-object v0, Lcom/android/settings/applications/EnterpriseDefaultApps;->CONTACTS:Lcom/android/settings/applications/EnterpriseDefaultApps;

    .line 37
    new-instance v0, Lcom/android/settings/applications/EnterpriseDefaultApps;

    new-array v5, v7, [Landroid/content/Intent;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SENDTO"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v8, v5, v6

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v8, v5, v1

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v8, v5, v2

    const/4 v8, 0x4

    const-string v9, "EMAIL"

    invoke-direct {v0, v9, v8, v5}, Lcom/android/settings/applications/EnterpriseDefaultApps;-><init>(Ljava/lang/String;I[Landroid/content/Intent;)V

    sput-object v0, Lcom/android/settings/applications/EnterpriseDefaultApps;->EMAIL:Lcom/android/settings/applications/EnterpriseDefaultApps;

    .line 40
    new-instance v0, Lcom/android/settings/applications/EnterpriseDefaultApps;

    new-array v5, v1, [Landroid/content/Intent;

    const-string v9, "geo:"

    invoke-static {v3, v4, v9, v4}, Lcom/android/settings/applications/EnterpriseDefaultApps;->buildIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x5

    const-string v4, "MAP"

    invoke-direct {v0, v4, v3, v5}, Lcom/android/settings/applications/EnterpriseDefaultApps;-><init>(Ljava/lang/String;I[Landroid/content/Intent;)V

    sput-object v0, Lcom/android/settings/applications/EnterpriseDefaultApps;->MAP:Lcom/android/settings/applications/EnterpriseDefaultApps;

    .line 41
    new-instance v0, Lcom/android/settings/applications/EnterpriseDefaultApps;

    new-array v4, v2, [Landroid/content/Intent;

    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.DIAL"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v6

    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.CALL"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v1

    const/4 v5, 0x6

    const-string v9, "PHONE"

    invoke-direct {v0, v9, v5, v4}, Lcom/android/settings/applications/EnterpriseDefaultApps;-><init>(Ljava/lang/String;I[Landroid/content/Intent;)V

    sput-object v0, Lcom/android/settings/applications/EnterpriseDefaultApps;->PHONE:Lcom/android/settings/applications/EnterpriseDefaultApps;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/applications/EnterpriseDefaultApps;

    .line 27
    sget-object v4, Lcom/android/settings/applications/EnterpriseDefaultApps;->BROWSER:Lcom/android/settings/applications/EnterpriseDefaultApps;

    aput-object v4, v0, v6

    sget-object v4, Lcom/android/settings/applications/EnterpriseDefaultApps;->CALENDAR:Lcom/android/settings/applications/EnterpriseDefaultApps;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/settings/applications/EnterpriseDefaultApps;->CAMERA:Lcom/android/settings/applications/EnterpriseDefaultApps;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/EnterpriseDefaultApps;->CONTACTS:Lcom/android/settings/applications/EnterpriseDefaultApps;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/settings/applications/EnterpriseDefaultApps;->EMAIL:Lcom/android/settings/applications/EnterpriseDefaultApps;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/settings/applications/EnterpriseDefaultApps;->MAP:Lcom/android/settings/applications/EnterpriseDefaultApps;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/applications/EnterpriseDefaultApps;->PHONE:Lcom/android/settings/applications/EnterpriseDefaultApps;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/applications/EnterpriseDefaultApps;->$VALUES:[Lcom/android/settings/applications/EnterpriseDefaultApps;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Landroid/content/Intent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/android/settings/applications/EnterpriseDefaultApps;->mIntents:[Landroid/content/Intent;

    return-void
.end method

.method private static buildIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    .line 54
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_a

    .line 56
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    if-eqz p2, :cond_13

    .line 59
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_13
    if-eqz p3, :cond_18

    .line 62
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_18
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/applications/EnterpriseDefaultApps;
    .registers 2

    .line 27
    const-class v0, Lcom/android/settings/applications/EnterpriseDefaultApps;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/applications/EnterpriseDefaultApps;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/applications/EnterpriseDefaultApps;
    .registers 1

    .line 27
    sget-object v0, Lcom/android/settings/applications/EnterpriseDefaultApps;->$VALUES:[Lcom/android/settings/applications/EnterpriseDefaultApps;

    invoke-virtual {v0}, [Lcom/android/settings/applications/EnterpriseDefaultApps;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/applications/EnterpriseDefaultApps;

    return-object v0
.end method


# virtual methods
.method public getIntents()[Landroid/content/Intent;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/settings/applications/EnterpriseDefaultApps;->mIntents:[Landroid/content/Intent;

    return-object p0
.end method
