.class public final enum Lcom/flyme/systemui/statusbar/ext/NetworkType;
.super Ljava/lang/Enum;
.source "NetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flyme/systemui/statusbar/ext/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flyme/systemui/statusbar/ext/NetworkType;

.field public static final enum Type_1X:Lcom/flyme/systemui/statusbar/ext/NetworkType;

.field public static final enum Type_1X3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

.field public static final enum Type_3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

.field public static final enum Type_4G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

.field public static final enum Type_4G_PLUS:Lcom/flyme/systemui/statusbar/ext/NetworkType;

.field public static final enum Type_5G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

.field public static final enum Type_E:Lcom/flyme/systemui/statusbar/ext/NetworkType;

.field public static final enum Type_G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

.field private static sDefaultNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

.field private static final sNetworkTypeLookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/flyme/systemui/statusbar/ext/NetworkType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTypeId:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 33
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;

    const/4 v1, 0x0

    const-string v2, "Type_G"

    invoke-direct {v0, v2, v1, v1}, Lcom/flyme/systemui/statusbar/ext/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 37
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;

    const/4 v2, 0x1

    const-string v3, "Type_3G"

    invoke-direct {v0, v3, v2, v2}, Lcom/flyme/systemui/statusbar/ext/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 41
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;

    const/4 v3, 0x2

    const-string v4, "Type_1X"

    invoke-direct {v0, v4, v3, v3}, Lcom/flyme/systemui/statusbar/ext/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_1X:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 45
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;

    const/4 v4, 0x3

    const-string v5, "Type_1X3G"

    invoke-direct {v0, v5, v4, v4}, Lcom/flyme/systemui/statusbar/ext/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_1X3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 49
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;

    const/4 v5, 0x4

    const-string v6, "Type_4G"

    invoke-direct {v0, v6, v5, v5}, Lcom/flyme/systemui/statusbar/ext/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_4G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 53
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;

    const/4 v6, 0x5

    const-string v7, "Type_E"

    invoke-direct {v0, v7, v6, v6}, Lcom/flyme/systemui/statusbar/ext/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_E:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 57
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;

    const/4 v7, 0x6

    const-string v8, "Type_4G_PLUS"

    invoke-direct {v0, v8, v7, v7}, Lcom/flyme/systemui/statusbar/ext/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_4G_PLUS:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 61
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;

    const/4 v8, 0x7

    const-string v9, "Type_5G"

    invoke-direct {v0, v9, v8, v8}, Lcom/flyme/systemui/statusbar/ext/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_5G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 28
    sget-object v9, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    aput-object v9, v0, v1

    sget-object v9, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    aput-object v9, v0, v2

    sget-object v2, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_1X:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    aput-object v2, v0, v3

    sget-object v2, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_1X3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    aput-object v2, v0, v4

    sget-object v2, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_4G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    aput-object v2, v0, v5

    sget-object v2, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_E:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    aput-object v2, v0, v6

    sget-object v2, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_4G_PLUS:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    aput-object v2, v0, v7

    sget-object v2, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_5G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    aput-object v2, v0, v8

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->$VALUES:[Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    .line 79
    invoke-static {v1, v1, v1}, Lcom/flyme/systemui/statusbar/ext/NetworkType;->mapNetworkTypeSets(ZZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->mTypeId:I

    return-void
.end method

.method public static final mapNetworkTypeSets(ZZZ)V
    .registers 6

    .line 104
    sget-object p1, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 106
    sget-object p1, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object p2, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_1X3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    sget-object p1, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object p2, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_1X3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    sget-object p1, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object p2, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_1X3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    const/16 v0, 0xc

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    sget-object p1, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object p2, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_1X3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    const/16 v0, 0xe

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    sget-object p1, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object p2, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x7

    const/4 p2, 0x4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p0, :cond_56

    .line 114
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_E:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_1X:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object p2, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_1X:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    sput-object p0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sDefaultNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    goto :goto_76

    .line 121
    :cond_56
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v1, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    sget-object p2, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    sput-object p0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sDefaultNetworkType:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    .line 129
    :goto_76
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    const/16 p1, 0x8

    sget-object p2, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    const/16 p1, 0x9

    sget-object p2, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    const/16 p1, 0xa

    sget-object p2, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    const/16 p1, 0xf

    sget-object p2, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_3G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    const/16 p1, 0x13

    sget-object p2, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_4G_PLUS:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    const/16 p1, 0xd

    sget-object p2, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_4G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->sNetworkTypeLookup:Landroid/util/SparseArray;

    const/16 p1, 0x14

    sget-object p2, Lcom/flyme/systemui/statusbar/ext/NetworkType;->Type_5G:Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flyme/systemui/statusbar/ext/NetworkType;
    .registers 2

    .line 28
    const-class v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemui/statusbar/ext/NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/flyme/systemui/statusbar/ext/NetworkType;
    .registers 1

    .line 28
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/NetworkType;->$VALUES:[Lcom/flyme/systemui/statusbar/ext/NetworkType;

    invoke-virtual {v0}, [Lcom/flyme/systemui/statusbar/ext/NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flyme/systemui/statusbar/ext/NetworkType;

    return-object v0
.end method
