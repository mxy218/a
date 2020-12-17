.class final enum Lcom/android/server/os/ProcessMemReclaim$ReclaimState;
.super Ljava/lang/Enum;
.source "ProcessMemReclaim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/ProcessMemReclaim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ReclaimState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/os/ProcessMemReclaim$ReclaimState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

.field public static final enum RECLAIMED:Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

.field public static final enum RECLAIMING:Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

.field public static final enum UNRECLAIM:Lcom/android/server/os/ProcessMemReclaim$ReclaimState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 43
    new-instance v0, Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    const/4 v1, 0x0

    const-string v2, "UNRECLAIM"

    invoke-direct {v0, v2, v1}, Lcom/android/server/os/ProcessMemReclaim$ReclaimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/os/ProcessMemReclaim$ReclaimState;->UNRECLAIM:Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    .line 45
    new-instance v0, Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    const/4 v2, 0x1

    const-string v3, "RECLAIMING"

    invoke-direct {v0, v3, v2}, Lcom/android/server/os/ProcessMemReclaim$ReclaimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/os/ProcessMemReclaim$ReclaimState;->RECLAIMING:Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    .line 47
    new-instance v0, Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    const/4 v3, 0x2

    const-string v4, "RECLAIMED"

    invoke-direct {v0, v4, v3}, Lcom/android/server/os/ProcessMemReclaim$ReclaimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/os/ProcessMemReclaim$ReclaimState;->RECLAIMED:Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    sget-object v4, Lcom/android/server/os/ProcessMemReclaim$ReclaimState;->UNRECLAIM:Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/server/os/ProcessMemReclaim$ReclaimState;->RECLAIMING:Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/os/ProcessMemReclaim$ReclaimState;->RECLAIMED:Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/os/ProcessMemReclaim$ReclaimState;->$VALUES:[Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/os/ProcessMemReclaim$ReclaimState;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 41
    const-class v0, Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/os/ProcessMemReclaim$ReclaimState;
    .registers 1

    .line 41
    sget-object v0, Lcom/android/server/os/ProcessMemReclaim$ReclaimState;->$VALUES:[Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    invoke-virtual {v0}, [Lcom/android/server/os/ProcessMemReclaim$ReclaimState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/os/ProcessMemReclaim$ReclaimState;

    return-object v0
.end method
