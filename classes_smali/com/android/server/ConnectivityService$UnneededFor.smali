.class final enum Lcom/android/server/ConnectivityService$UnneededFor;
.super Ljava/lang/Enum;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UnneededFor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/ConnectivityService$UnneededFor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/ConnectivityService$UnneededFor;

.field public static final enum LINGER:Lcom/android/server/ConnectivityService$UnneededFor;

.field public static final enum TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 348
    new-instance v0, Lcom/android/server/ConnectivityService$UnneededFor;

    const/4 v1, 0x0

    const-string v2, "LINGER"

    invoke-direct {v0, v2, v1}, Lcom/android/server/ConnectivityService$UnneededFor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ConnectivityService$UnneededFor;->LINGER:Lcom/android/server/ConnectivityService$UnneededFor;

    .line 349
    new-instance v0, Lcom/android/server/ConnectivityService$UnneededFor;

    const/4 v2, 0x1

    const-string v3, "TEARDOWN"

    invoke-direct {v0, v3, v2}, Lcom/android/server/ConnectivityService$UnneededFor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    .line 347
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/ConnectivityService$UnneededFor;

    sget-object v3, Lcom/android/server/ConnectivityService$UnneededFor;->LINGER:Lcom/android/server/ConnectivityService$UnneededFor;

    aput-object v3, v0, v1

    sget-object v1, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/ConnectivityService$UnneededFor;->$VALUES:[Lcom/android/server/ConnectivityService$UnneededFor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 347
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/ConnectivityService$UnneededFor;
    .registers 2

    .line 347
    const-class v0, Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/ConnectivityService$UnneededFor;

    return-object p0
.end method

.method public static values()[Lcom/android/server/ConnectivityService$UnneededFor;
    .registers 1

    .line 347
    sget-object v0, Lcom/android/server/ConnectivityService$UnneededFor;->$VALUES:[Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-virtual {v0}, [Lcom/android/server/ConnectivityService$UnneededFor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/ConnectivityService$UnneededFor;

    return-object v0
.end method
