.class Lcom/android/server/pm/ComponentResolver$SchemesIterGenerator;
.super Lcom/android/server/pm/ComponentResolver$IterGenerator;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SchemesIterGenerator"
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

    .line 1910
    invoke-direct {p0}, Lcom/android/server/pm/ComponentResolver$IterGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/util/Iterator;
    .registers 2
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

    .line 1913
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->schemesIterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
