.class public Lcom/google/protobuf/ExtensionRegistryLite;
.super Ljava/lang/Object;
.source "ExtensionRegistryLite.java"


# static fields
.field private static final EMPTY:Lcom/google/protobuf/ExtensionRegistryLite;


# instance fields
.field private final extensionsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 159
    new-instance v0, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/ExtensionRegistryLite;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/ExtensionRegistryLite;->EMPTY:Lcom/google/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method public static getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;
    .registers 1

    .line 97
    sget-object v0, Lcom/google/protobuf/ExtensionRegistryLite;->EMPTY:Lcom/google/protobuf/ExtensionRegistryLite;

    return-object v0
.end method
