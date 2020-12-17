.class final enum Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;
.super Ljava/lang/Enum;
.source "RecentGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/gesture/RecentGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RecentsDir"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

.field public static final enum HORIZONTAL_BOTTOM:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

.field public static final enum HORIZONTAL_LEFT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

.field public static final enum HORIZONTAL_RIGHT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

.field public static final enum LANDSCAPE_BOTTOM:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

.field public static final enum LANDSCAPE_LEFT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

.field public static final enum LANDSCAPE_RIGHT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

.field public static final enum REVERSE_LANDSCAPE_BOTTOM:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

.field public static final enum REVERSE_LANDSCAPE_LEFT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

.field public static final enum REVERSE_LANDSCAPE_RIGHT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 42
    new-instance v0, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    const/4 v1, 0x0

    const-string v2, "HORIZONTAL_LEFT"

    invoke-direct {v0, v2, v1}, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->HORIZONTAL_LEFT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    .line 43
    new-instance v0, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    const/4 v2, 0x1

    const-string v3, "HORIZONTAL_RIGHT"

    invoke-direct {v0, v3, v2}, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->HORIZONTAL_RIGHT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    .line 44
    new-instance v0, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    const/4 v3, 0x2

    const-string v4, "HORIZONTAL_BOTTOM"

    invoke-direct {v0, v4, v3}, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->HORIZONTAL_BOTTOM:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    .line 45
    new-instance v0, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    const/4 v4, 0x3

    const-string v5, "LANDSCAPE_LEFT"

    invoke-direct {v0, v5, v4}, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->LANDSCAPE_LEFT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    .line 46
    new-instance v0, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    const/4 v5, 0x4

    const-string v6, "LANDSCAPE_RIGHT"

    invoke-direct {v0, v6, v5}, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->LANDSCAPE_RIGHT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    .line 47
    new-instance v0, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    const/4 v6, 0x5

    const-string v7, "LANDSCAPE_BOTTOM"

    invoke-direct {v0, v7, v6}, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->LANDSCAPE_BOTTOM:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    .line 48
    new-instance v0, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    const/4 v7, 0x6

    const-string v8, "REVERSE_LANDSCAPE_LEFT"

    invoke-direct {v0, v8, v7}, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->REVERSE_LANDSCAPE_LEFT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    .line 49
    new-instance v0, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    const/4 v8, 0x7

    const-string v9, "REVERSE_LANDSCAPE_RIGHT"

    invoke-direct {v0, v9, v8}, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->REVERSE_LANDSCAPE_RIGHT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    .line 50
    new-instance v0, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    const/16 v9, 0x8

    const-string v10, "REVERSE_LANDSCAPE_BOTTOM"

    invoke-direct {v0, v10, v9}, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->REVERSE_LANDSCAPE_BOTTOM:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    sget-object v10, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->HORIZONTAL_LEFT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    aput-object v10, v0, v1

    sget-object v1, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->HORIZONTAL_RIGHT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->HORIZONTAL_BOTTOM:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->LANDSCAPE_LEFT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->LANDSCAPE_RIGHT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->LANDSCAPE_BOTTOM:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->REVERSE_LANDSCAPE_LEFT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->REVERSE_LANDSCAPE_RIGHT:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->REVERSE_LANDSCAPE_BOTTOM:Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    aput-object v1, v0, v9

    sput-object v0, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->$VALUES:[Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;

    .line 41
    const-class v0, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    return-object v0
.end method

.method public static values()[Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;
    .registers 1

    .line 41
    sget-object v0, Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->$VALUES:[Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    invoke-virtual {v0}, [Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/policy/gesture/RecentGestureListener$RecentsDir;

    return-object v0
.end method
