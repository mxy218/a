.class Lcom/android/server/notification/ConfigCloud$Record;
.super Ljava/lang/Object;
.source "ConfigCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ConfigCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Record"
.end annotation


# instance fields
.field covered:Z

.field packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/notification/ConfigCloud;

.field values:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ConfigCloud;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/android/server/notification/ConfigCloud$Record;->this$0:Lcom/android/server/notification/ConfigCloud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/ConfigCloud$Record;->values:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ConfigCloud;Lcom/android/server/notification/ConfigCloud$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/notification/ConfigCloud;
    .param p2, "x1"  # Lcom/android/server/notification/ConfigCloud$1;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/notification/ConfigCloud$Record;-><init>(Lcom/android/server/notification/ConfigCloud;)V

    return-void
.end method
