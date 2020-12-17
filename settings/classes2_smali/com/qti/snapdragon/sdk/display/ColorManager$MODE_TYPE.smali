.class public final enum Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;
.super Ljava/lang/Enum;
.source "ColorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/ColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MODE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

.field public static final enum MODE_ALL:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

.field public static final enum MODE_SYSTEM:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

.field public static final enum MODE_USER:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 235
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    const/4 v1, 0x0

    const-string v2, "MODE_SYSTEM"

    invoke-direct {v0, v2, v1, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_SYSTEM:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    .line 242
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    const/4 v2, 0x1

    const-string v3, "MODE_USER"

    invoke-direct {v0, v3, v2, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_USER:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    .line 247
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    const/4 v3, 0x2

    const-string v4, "MODE_ALL"

    invoke-direct {v0, v4, v3, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_ALL:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    .line 229
    sget-object v4, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_SYSTEM:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    aput-object v4, v0, v1

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_USER:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->MODE_ALL:Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->$VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 252
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 253
    iput p3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;
    .registers 2

    .line 229
    const-class v0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;
    .registers 1

    .line 229
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->$VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    invoke-virtual {v0}, [Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;

    return-object v0
.end method


# virtual methods
.method protected getValue()I
    .registers 1

    .line 258
    iget p0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager$MODE_TYPE;->value:I

    return p0
.end method
