.class final enum Lcom/android/settings/UserCredentialsSettings$Credential$Type;
.super Ljava/lang/Enum;
.source "UserCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings$Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/UserCredentialsSettings$Credential$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/UserCredentialsSettings$Credential$Type;

.field public static final enum CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

.field public static final enum USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

.field public static final enum USER_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;


# instance fields
.field final prefix:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 436
    new-instance v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const-string v1, "CACERT_"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "CA_CERTIFICATE"

    invoke-direct {v0, v3, v2, v1}, Lcom/android/settings/UserCredentialsSettings$Credential$Type;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    .line 437
    new-instance v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const-string v1, "USRCERT_"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const-string v4, "USER_CERTIFICATE"

    invoke-direct {v0, v4, v3, v1}, Lcom/android/settings/UserCredentialsSettings$Credential$Type;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    .line 438
    new-instance v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const-string v1, "USRPKEY_"

    const-string v4, "USRSKEY_"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    const-string v5, "USER_KEY"

    invoke-direct {v0, v5, v4, v1}, Lcom/android/settings/UserCredentialsSettings$Credential$Type;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    .line 435
    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->$VALUES:[Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 442
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 443
    iput-object p3, p0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->prefix:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/UserCredentialsSettings$Credential$Type;
    .registers 2

    .line 435
    const-class v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/UserCredentialsSettings$Credential$Type;
    .registers 1

    .line 435
    sget-object v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->$VALUES:[Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v0}, [Lcom/android/settings/UserCredentialsSettings$Credential$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    return-object v0
.end method
