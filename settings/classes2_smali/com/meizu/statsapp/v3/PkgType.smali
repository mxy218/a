.class public final enum Lcom/meizu/statsapp/v3/PkgType;
.super Ljava/lang/Enum;
.source "PkgType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/meizu/statsapp/v3/PkgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/statsapp/v3/PkgType;

.field public static final enum APP:Lcom/meizu/statsapp/v3/PkgType;

.field public static final enum FLYME_TV:Lcom/meizu/statsapp/v3/PkgType;

.field public static final enum GAME:Lcom/meizu/statsapp/v3/PkgType;

.field public static final enum PAD:Lcom/meizu/statsapp/v3/PkgType;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 11
    new-instance v0, Lcom/meizu/statsapp/v3/PkgType;

    const/4 v1, 0x0

    const-string v2, "APP"

    invoke-direct {v0, v2, v1, v1}, Lcom/meizu/statsapp/v3/PkgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/statsapp/v3/PkgType;->APP:Lcom/meizu/statsapp/v3/PkgType;

    .line 12
    new-instance v0, Lcom/meizu/statsapp/v3/PkgType;

    const/4 v2, 0x1

    const-string v3, "GAME"

    invoke-direct {v0, v3, v2, v2}, Lcom/meizu/statsapp/v3/PkgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/statsapp/v3/PkgType;->GAME:Lcom/meizu/statsapp/v3/PkgType;

    .line 13
    new-instance v0, Lcom/meizu/statsapp/v3/PkgType;

    const/4 v3, 0x2

    const-string v4, "FLYME_TV"

    invoke-direct {v0, v4, v3, v3}, Lcom/meizu/statsapp/v3/PkgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/statsapp/v3/PkgType;->FLYME_TV:Lcom/meizu/statsapp/v3/PkgType;

    .line 14
    new-instance v0, Lcom/meizu/statsapp/v3/PkgType;

    const/4 v4, 0x3

    const-string v5, "PAD"

    invoke-direct {v0, v5, v4, v4}, Lcom/meizu/statsapp/v3/PkgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/statsapp/v3/PkgType;->PAD:Lcom/meizu/statsapp/v3/PkgType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/meizu/statsapp/v3/PkgType;

    .line 10
    sget-object v5, Lcom/meizu/statsapp/v3/PkgType;->APP:Lcom/meizu/statsapp/v3/PkgType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/meizu/statsapp/v3/PkgType;->GAME:Lcom/meizu/statsapp/v3/PkgType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/statsapp/v3/PkgType;->FLYME_TV:Lcom/meizu/statsapp/v3/PkgType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/statsapp/v3/PkgType;->PAD:Lcom/meizu/statsapp/v3/PkgType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/meizu/statsapp/v3/PkgType;->$VALUES:[Lcom/meizu/statsapp/v3/PkgType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/meizu/statsapp/v3/PkgType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/statsapp/v3/PkgType;
    .registers 2

    .line 10
    const-class v0, Lcom/meizu/statsapp/v3/PkgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/meizu/statsapp/v3/PkgType;

    return-object p0
.end method

.method public static values()[Lcom/meizu/statsapp/v3/PkgType;
    .registers 1

    .line 10
    sget-object v0, Lcom/meizu/statsapp/v3/PkgType;->$VALUES:[Lcom/meizu/statsapp/v3/PkgType;

    invoke-virtual {v0}, [Lcom/meizu/statsapp/v3/PkgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/statsapp/v3/PkgType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .registers 1

    .line 36
    iget p0, p0, Lcom/meizu/statsapp/v3/PkgType;->type:I

    return p0
.end method
