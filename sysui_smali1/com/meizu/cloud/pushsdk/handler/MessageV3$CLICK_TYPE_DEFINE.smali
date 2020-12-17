.class public final enum Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;
.super Ljava/lang/Enum;
.source "MessageV3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/cloud/pushsdk/handler/MessageV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CLICK_TYPE_DEFINE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

.field public static final enum CLICK_TYPE_ACTIVITY:Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

.field public static final enum CLICK_TYPE_LAUNCHER_ACTIVITY:Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

.field public static final enum CLICK_TYPE_WEB:Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 144
    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    const/4 v1, 0x0

    const-string v2, "CLICK_TYPE_LAUNCHER_ACTIVITY"

    invoke-direct {v0, v2, v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;->CLICK_TYPE_LAUNCHER_ACTIVITY:Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    .line 148
    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    const/4 v2, 0x1

    const-string v3, "CLICK_TYPE_ACTIVITY"

    invoke-direct {v0, v3, v2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;->CLICK_TYPE_ACTIVITY:Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    .line 152
    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    const/4 v3, 0x2

    const-string v4, "CLICK_TYPE_WEB"

    invoke-direct {v0, v4, v3}, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;->CLICK_TYPE_WEB:Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    .line 140
    sget-object v4, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;->CLICK_TYPE_LAUNCHER_ACTIVITY:Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    aput-object v4, v0, v1

    sget-object v1, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;->CLICK_TYPE_ACTIVITY:Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;->CLICK_TYPE_WEB:Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;->$VALUES:[Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;
    .registers 2

    .line 140
    const-class v0, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    return-object p0
.end method

.method public static values()[Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;
    .registers 1

    .line 140
    sget-object v0, Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;->$VALUES:[Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    invoke-virtual {v0}, [Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/cloud/pushsdk/handler/MessageV3$CLICK_TYPE_DEFINE;

    return-object v0
.end method
