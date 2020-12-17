.class public Lcom/android/server/os/DynamicAffinityCtrl$Stats;
.super Ljava/lang/Object;
.source "DynamicAffinityCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/DynamicAffinityCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# instance fields
.field private base_stime:J

.field private base_uptime:J

.field private base_utime:J

.field private name:Ljava/lang/String;

.field public final pid:I

.field private rel_stime:I

.field private rel_uptime:J

.field private rel_utime:I

.field private statFile:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "tid"  # I

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput p1, p0, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->pid:I

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl$Stats;

    .line 164
    iget v0, p0, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->rel_utime:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/os/DynamicAffinityCtrl$Stats;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl$Stats;
    .param p1, "x1"  # I

    .line 164
    iput p1, p0, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->rel_utime:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl$Stats;

    .line 164
    iget v0, p0, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->rel_stime:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/os/DynamicAffinityCtrl$Stats;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl$Stats;
    .param p1, "x1"  # I

    .line 164
    iput p1, p0, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->rel_stime:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl$Stats;

    .line 164
    iget-object v0, p0, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->statFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/os/DynamicAffinityCtrl$Stats;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl$Stats;
    .param p1, "x1"  # Ljava/lang/String;

    .line 164
    iput-object p1, p0, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->statFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl$Stats;

    .line 164
    iget-object v0, p0, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/os/DynamicAffinityCtrl$Stats;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl$Stats;
    .param p1, "x1"  # Ljava/lang/String;

    .line 164
    iput-object p1, p0, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl$Stats;

    .line 164
    iget-wide v0, p0, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->base_utime:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/server/os/DynamicAffinityCtrl$Stats;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl$Stats;
    .param p1, "x1"  # J

    .line 164
    iput-wide p1, p0, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->base_utime:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl$Stats;

    .line 164
    iget-wide v0, p0, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->base_stime:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/server/os/DynamicAffinityCtrl$Stats;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl$Stats;
    .param p1, "x1"  # J

    .line 164
    iput-wide p1, p0, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->base_stime:J

    return-wide p1
.end method

.method static synthetic access$1502(Lcom/android/server/os/DynamicAffinityCtrl$Stats;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl$Stats;
    .param p1, "x1"  # J

    .line 164
    iput-wide p1, p0, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->rel_uptime:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl$Stats;

    .line 164
    iget-wide v0, p0, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->base_uptime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/android/server/os/DynamicAffinityCtrl$Stats;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/os/DynamicAffinityCtrl$Stats;
    .param p1, "x1"  # J

    .line 164
    iput-wide p1, p0, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->base_uptime:J

    return-wide p1
.end method
