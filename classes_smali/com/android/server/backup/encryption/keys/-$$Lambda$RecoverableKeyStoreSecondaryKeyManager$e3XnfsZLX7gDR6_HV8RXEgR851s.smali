.class public final synthetic Lcom/android/server/backup/encryption/keys/-$$Lambda$RecoverableKeyStoreSecondaryKeyManager$e3XnfsZLX7gDR6_HV8RXEgR851s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/encryption/keys/-$$Lambda$RecoverableKeyStoreSecondaryKeyManager$e3XnfsZLX7gDR6_HV8RXEgR851s;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/backup/encryption/keys/-$$Lambda$RecoverableKeyStoreSecondaryKeyManager$e3XnfsZLX7gDR6_HV8RXEgR851s;->f$0:Ljava/lang/String;

    check-cast p1, Ljavax/crypto/SecretKey;

    invoke-static {v0, p1}, Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKeyManager;->lambda$get$0(Ljava/lang/String;Ljavax/crypto/SecretKey;)Lcom/android/server/backup/encryption/keys/RecoverableKeyStoreSecondaryKey;

    move-result-object p1

    return-object p1
.end method
