.class Lcom/android/server/am/AppCompactor$2;
.super Ljava/util/LinkedHashMap;
.source "AppCompactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppCompactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Integer;",
        "Lcom/android/server/am/AppCompactor$LastCompactionStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppCompactor;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppCompactor;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/am/AppCompactor;

    .line 208
    iput-object p1, p0, Lcom/android/server/am/AppCompactor$2;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .param p1, "eldest"  # Ljava/util/Map$Entry;

    .line 211
    invoke-virtual {p0}, Lcom/android/server/am/AppCompactor$2;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
