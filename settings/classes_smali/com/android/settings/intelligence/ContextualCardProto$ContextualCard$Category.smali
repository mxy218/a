.class public final enum Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;
.super Ljava/lang/Enum;
.source "ContextualCardProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

.field public static final enum DEFAULT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

.field public static final enum DEFERRED_SETUP:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

.field public static final enum IMPORTANT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

.field public static final enum POSSIBLE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

.field public static final enum SUGGESTION:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 565
    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1, v1}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->DEFAULT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    .line 569
    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    const/4 v2, 0x1

    const-string v3, "SUGGESTION"

    invoke-direct {v0, v3, v2, v2}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->SUGGESTION:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    .line 573
    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    const/4 v3, 0x2

    const-string v4, "POSSIBLE"

    invoke-direct {v0, v4, v3, v3}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->POSSIBLE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    .line 577
    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    const/4 v4, 0x3

    const-string v5, "IMPORTANT"

    invoke-direct {v0, v5, v4, v4}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->IMPORTANT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    .line 581
    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    const/4 v5, 0x5

    const/4 v6, 0x4

    const-string v7, "DEFERRED_SETUP"

    invoke-direct {v0, v7, v6, v5}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->DEFERRED_SETUP:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    new-array v0, v5, [Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    .line 560
    sget-object v5, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->DEFAULT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->SUGGESTION:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->POSSIBLE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->IMPORTANT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->DEFERRED_SETUP:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->$VALUES:[Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    .line 634
    new-instance v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category$1;

    invoke-direct {v0}, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category$1;-><init>()V

    sput-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 643
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 644
    iput p3, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;
    .registers 2

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 v0, 0x5

    if-eq p0, v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 624
    :cond_10
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->DEFERRED_SETUP:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object p0

    .line 623
    :cond_13
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->IMPORTANT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object p0

    .line 622
    :cond_16
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->POSSIBLE:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object p0

    .line 621
    :cond_19
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->SUGGESTION:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object p0

    .line 620
    :cond_1c
    sget-object p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->DEFAULT:Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;
    .registers 2

    .line 560
    const-class v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;
    .registers 1

    .line 560
    sget-object v0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->$VALUES:[Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    invoke-virtual {v0}, [Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 1

    .line 607
    iget p0, p0, Lcom/android/settings/intelligence/ContextualCardProto$ContextualCard$Category;->value:I

    return p0
.end method
