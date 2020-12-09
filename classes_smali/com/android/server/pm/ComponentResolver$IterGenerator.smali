.class Lcom/android/server/pm/ComponentResolver$IterGenerator;
.super Ljava/lang/Object;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IterGenerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "TE;>;"
        }
    .end annotation

    .line 1889
    const/4 p1, 0x0

    return-object p1
.end method
