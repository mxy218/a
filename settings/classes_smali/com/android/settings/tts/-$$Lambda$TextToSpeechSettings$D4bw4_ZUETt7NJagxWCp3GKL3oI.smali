.class public final synthetic Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$D4bw4_ZUETt7NJagxWCp3GKL3oI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$D4bw4_ZUETt7NJagxWCp3GKL3oI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$D4bw4_ZUETt7NJagxWCp3GKL3oI;

    invoke-direct {v0}, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$D4bw4_ZUETt7NJagxWCp3GKL3oI;-><init>()V

    sput-object v0, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$D4bw4_ZUETt7NJagxWCp3GKL3oI;->INSTANCE:Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$D4bw4_ZUETt7NJagxWCp3GKL3oI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-static {p1, p2}, Lcom/android/settings/tts/TextToSpeechSettings;->lambda$updateDefaultLocalePref$3(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p0

    return p0
.end method
