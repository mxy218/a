.class Lcom/android/server/pm/ComponentResolver$CategoriesIterGenerator;
.super Lcom/android/server/pm/ComponentResolver$IterGenerator;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CategoriesIterGenerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/ComponentResolver$IterGenerator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1902
    invoke-direct {p0}, Lcom/android/server/pm/ComponentResolver$IterGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/util/Iterator;
    .registers 3
    .param p1, "info"  # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1905
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->categoriesIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
