.class Lcom/android/server/pm/CrossProfileIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "CrossProfileIntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver<",
        "Lcom/android/server/pm/CrossProfileIntentFilter;",
        "Lcom/android/server/pm/CrossProfileIntentFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .registers 3

    .line 27
    check-cast p2, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/CrossProfileIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/CrossProfileIntentFilter;)Z

    move-result p1

    return p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/CrossProfileIntentFilter;)Z
    .registers 3

    .line 36
    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .registers 2

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolver;->newArray(I)[Lcom/android/server/pm/CrossProfileIntentFilter;

    move-result-object p1

    return-object p1
.end method

.method protected newArray(I)[Lcom/android/server/pm/CrossProfileIntentFilter;
    .registers 2

    .line 31
    new-array p1, p1, [Lcom/android/server/pm/CrossProfileIntentFilter;

    return-object p1
.end method

.method protected sortResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;)V"
        }
    .end annotation

    .line 42
    return-void
.end method
