.class public final enum Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;
.super Ljava/lang/Enum;
.source "TerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

.field public static final enum FLYME_TV:Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

.field public static final enum PAD:Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

.field public static final enum PHONE:Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 8
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "PHONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->PHONE:Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

    .line 9
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

    const/4 v3, 0x2

    const-string v4, "FLYME_TV"

    invoke-direct {v0, v4, v2, v3}, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->FLYME_TV:Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

    .line 10
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

    const/4 v4, 0x3

    const-string v5, "PAD"

    invoke-direct {v0, v5, v3, v4}, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->PAD:Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

    new-array v0, v4, [Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

    .line 7
    sget-object v4, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->PHONE:Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->FLYME_TV:Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->PAD:Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->$VALUES:[Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;
    .registers 2

    .line 7
    const-class v0, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

    return-object p0
.end method

.method public static values()[Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;
    .registers 1

    .line 7
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->$VALUES:[Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

    invoke-virtual {v0}, [Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 24
    iget p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->type:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public value()I
    .registers 1

    .line 19
    iget p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/constants/TerType;->type:I

    return p0
.end method
