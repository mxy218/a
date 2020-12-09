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

    .line 205
    iput-object p1, p0, Lcom/android/server/am/AppCompactor$2;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 3

    .line 208
    invoke-virtual {p0}, Lcom/android/server/am/AppCompactor$2;->size()I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method
