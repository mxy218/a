.class public final enum Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;
.super Ljava/lang/Enum;
.source "ColorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/snapdragon/sdk/display/ColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DCM_FEATURE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

.field public static final enum FEATURE_ADAPTIVE_BACKLIGHT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

.field public static final enum FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

.field public static final enum FEATURE_COLOR_MODE_MANAGEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

.field public static final enum FEATURE_COLOR_MODE_SELECTION:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

.field public static final enum FEATURE_GLOBAL_PICTURE_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

.field public static final enum FEATURE_MEMORY_COLOR_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

.field public static final enum FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 92
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    const/4 v1, 0x0

    const-string v2, "FEATURE_COLOR_BALANCE"

    invoke-direct {v0, v2, v1, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    .line 98
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    const/4 v2, 0x1

    const-string v3, "FEATURE_COLOR_MODE_SELECTION"

    invoke-direct {v0, v3, v2, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_SELECTION:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    .line 103
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    const/4 v3, 0x2

    const-string v4, "FEATURE_COLOR_MODE_MANAGEMENT"

    invoke-direct {v0, v4, v3, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_MANAGEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    .line 108
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    const/4 v4, 0x3

    const-string v5, "FEATURE_ADAPTIVE_BACKLIGHT"

    invoke-direct {v0, v5, v4, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_ADAPTIVE_BACKLIGHT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    .line 113
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    const/4 v5, 0x4

    const-string v6, "FEATURE_GLOBAL_PICTURE_ADJUSTMENT"

    invoke-direct {v0, v6, v5, v5}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_GLOBAL_PICTURE_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    .line 118
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    const/4 v6, 0x5

    const-string v7, "FEATURE_MEMORY_COLOR_ADJUSTMENT"

    invoke-direct {v0, v7, v6, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_MEMORY_COLOR_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    .line 123
    new-instance v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    const/4 v7, 0x6

    const-string v8, "FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT"

    invoke-direct {v0, v8, v7, v7}, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    .line 88
    sget-object v8, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_BALANCE:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    aput-object v8, v0, v1

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_SELECTION:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_COLOR_MODE_MANAGEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_ADAPTIVE_BACKLIGHT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_GLOBAL_PICTURE_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_MEMORY_COLOR_ADJUSTMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->FEATURE_SUNLIGHT_VISBILITY_IMPROVEMENT:Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    aput-object v1, v0, v7

    sput-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->$VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput p3, p0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;
    .registers 2

    .line 88
    const-class v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    return-object p0
.end method

.method public static values()[Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;
    .registers 1

    .line 88
    sget-object v0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->$VALUES:[Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    invoke-virtual {v0}, [Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;

    return-object v0
.end method


# virtual methods
.method protected getValue()I
    .registers 1

    .line 134
    iget p0, p0, Lcom/qti/snapdragon/sdk/display/ColorManager$DCM_FEATURE;->value:I

    return p0
.end method
