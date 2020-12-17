.class public final enum Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;
.super Ljava/lang/Enum;
.source "GestureListenerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/gesture/GestureListenerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "GestureState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

.field public static final enum CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

.field public static final enum IDLE:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

.field public static final enum PENDING_CHECK:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

.field public static final enum TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 36
    new-instance v0, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    invoke-direct {v0, v2, v1}, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->IDLE:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    .line 37
    new-instance v0, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    const/4 v2, 0x1

    const-string v3, "PENDING_CHECK"

    invoke-direct {v0, v3, v2}, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->PENDING_CHECK:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    .line 38
    new-instance v0, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    const/4 v3, 0x2

    const-string v4, "CANCELED"

    invoke-direct {v0, v4, v3}, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    .line 39
    new-instance v0, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    const/4 v4, 0x3

    const-string v5, "TRIGGERED"

    invoke-direct {v0, v5, v4}, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    sget-object v5, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->IDLE:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->PENDING_CHECK:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->CANCELED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->TRIGGERED:Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->$VALUES:[Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 35
    const-class v0, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;
    .registers 1

    .line 35
    sget-object v0, Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->$VALUES:[Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    invoke-virtual {v0}, [Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/policy/gesture/GestureListenerBase$GestureState;

    return-object v0
.end method
